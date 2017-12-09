#include <opencv2/opencv.hpp>

#include <iostream>
#include <string>
#include <vector>

typedef unsigned char uchar;

struct KouTu{
    int left_up_x;
    int left_up_y;

    int right_bottom_x;
    int right_bottom_y;

    cv::Mat label;

    cv::Mat FilterHue(const cv::Mat& img, int hue, int T = 10){
        left_up_x = -1;
        left_up_y = -1;
        right_bottom_x = -1;
        right_bottom_y = -1;
        
        int w = img.cols, h = img.rows;
        cv::Mat ret = cv::Mat::zeros( h, w, CV_8UC1 );

        cv::Mat img_hsv;
        cv::cvtColor(img, img_hsv, CV_BGR2HSV);

        int min_x = w - 1, max_x = 0;
        int min_y = h - 1, max_y = 0;
        for(int i = 0; i < h; i++){
            for(int j = 0; j < w; j++){
                cv::Vec3b hsv = img_hsv.at<cv::Vec3b>(i, j);

                const int h = 2 * (int)hsv[0];

                if( !(h > (hue - T) && h <= (hue + T)) ){
                    ret.at<uchar>(i, j) = 1;
                    
                    if(min_x > j) min_x = j;
                    if(max_x < j) max_x = j;
                    if(min_y > i) min_y = i;
                    if(max_y < i) max_y = i;
                }
            }
        }

        left_up_x = min_x;
        left_up_y = min_y;
        right_bottom_x = max_x;
        right_bottom_y = max_y;

        if(min_x != -1) label = ret.rowRange(min_y, max_y).colRange(min_x, max_x).clone();

        return ret;
    }
};

int main(int argc, char **argvs){
    std::string img_name;
    if(argc >= 2){
        img_name.assign(argvs[1]);
    }
    else{
        return 0;
    }

    cv::Mat src = cv::imread(img_name, CV_LOAD_IMAGE_COLOR);
    cv::namedWindow("ori");
    cv::imshow("ori", src);

    KouTu gen;
    cv::Mat mask = gen.FilterHue(src, 140, 20);

    cv::Mat img;
    src.copyTo(img, mask);

    cv::namedWindow("new");
    cv::imshow("new", img);
    cv::waitKey();
    return 0;
}
