#include <opencv2/opencv.hpp>

#include <iostream>
#include <string>
#include <vector>

typedef unsigned char uchar;

cv::Mat fun(const cv::Mat& img, const cv::Scalar& back_color, int left = -10, int right = 10){
    int w = img.cols, h = img.rows;
    int bb = back_color[0], gb = back_color[1], rb = back_color[2];

    cv::Mat ret = cv::Mat::zeros( h, w, CV_8UC1 );
    for(int i = 0; i < h; i++){
        for(int j = 0; j < w; j++){
            cv::Vec3b bgr = img.at<cv::Vec3b>(i, j);

            const int b = (int)bgr[0];
            const int g = (int)bgr[1];
            const int r = (int)bgr[2];

        
            if( 
                b > (bb + left) && b <= (bb + right)
                && g > (gb + left) && g <= (gb + right)
                && r > (rb + left) && r <= (rb + right)  
            ){

            }
            else{
                ret.at<uchar>(i, j) = 1;
            }
        }
    }
    return ret;
}

/*
    hue
*/
//#include "CalcHist.h"
cv::Mat fun2(const cv::Mat& img, int hue, int T = 10){
    int w = img.cols, h = img.rows;
    cv::Mat ret = cv::Mat::zeros( h, w, CV_8UC1 );

    cv::Mat img_hsv;
    cv::cvtColor(img, img_hsv, CV_BGR2HSV);

    //CalcHistogram gen;
    //gen.getHistogramImage(img_hsv);

    for(int i = 0; i < h; i++){
        for(int j = 0; j < w; j++){
            cv::Vec3b hsv = img_hsv.at<cv::Vec3b>(i, j);

            const int h = 2 * (int)hsv[0];
            //const int s = (int)hsv[1];
            //const int v = (int)hsv[2];

            if( 
                h > (hue - T) && h <= (hue + T) 
            ){

            }
            else{
                ret.at<uchar>(i, j) = 1;
            }
        }
    }
    return ret;
}

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

    cv::Mat label = fun2(src, 140, 20);
    int w = src.cols, h = src.rows;

    int sx = -1, sy = -1;
    int ex = -1, ey = -1;
    cv::Mat img = src.clone();
    for(int i = 0; i < h; i++){
        for(int j = 0; j < w; j++){
            cv::Vec3b& bgr = img.at<cv::Vec3b>(i, j);

            if( label.at<uchar>(i, j) == 0 ){
                bgr[0] = 255; bgr[1] = 255; bgr[2] = 255;
            }
            else{
                if( sx == -1 ){
                    sx = j;
                    sy = i;
                }
                ex = j;
                ey = i;
            }
        }
    }

    std::cout << sx << " " << sy << std::endl;
    std::cout << ex << " " << ey << std::endl;

    cv::namedWindow("new");
    cv::imshow("new", img);
    cv::waitKey();
    return 0;
}
