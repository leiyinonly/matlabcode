clc;
close all;
clear all;

f=imread('街景.jpg');
% if size(f,3) == 3
%     f_gray = rgb2gray(f);
% else
%     f_gray = f;
% end
figure,imshow(f);

p=fspecial('gaussian',[5 5],2);
f_blur=imfilter(f,p);
figure,imshow(f_blur);
imwrite(f_blur,'街景模糊.jpg')

% kx = [-1 1; 0 0];
% ky = [-1 0; 1 0]; 
% 
% f_grad_x=conv2(f_gray,kx,'valid');%水平方向梯度
% f_grad_y=conv2(f_gray,ky,'valid');%垂直方向梯度
% % g=sqrt(f_grad_x.^2+f_grad_y.^2);
% 
% Ix=f_grad_x;
% Value=unique(Ix(:));
% Count=[hist(Ix(:),Value)]';
% s=sum(Count(:));
% count1=log2(Count/s);%length(Ix));
% figure,plot(Value,count1,'-');
% axis([-200 200 -18 0]);
% % title('Heavy-tailed distribution on image gradients');
% % xlabel('Gradient');
% % ylabel('Log2 probability density');
% % grid on
% hold on
% 
% f_blur_x=conv2(f_blur,kx,'valid');%水平方向梯度
% f_blur_y=conv2(f_blur,ky,'valid');%垂直方向梯度
% % g=sqrt(f_grad_x.^2+f_grad_y.^2);
% 
% Ix=f_blur_x;
% Value=unique(Ix(:));
% Count=[hist(Ix(:),Value)]';
% s=sum(Count(:));
% count1=log2(Count/s);%length(Ix));
% plot(Value,count1,'r-');
% axis([-200 200 -18 0]);

% title('Heavy-tailed distribution on image gradients');
% xlabel('Gradient');
% ylabel('Log2 probability density');
% grid on

% Ix=f_grad_x;
% Value=unique(Ix(:));
% Count=[hist(Ix(:),Value)]';
% count1=log2(Count/length(f_grad_x));
% figure,plot(Value,count1);
% axis([-150 150 -18 10]);
% title('水平方向梯度概率分布图');
% 
% Iy=f_grad_y;
% Value=unique(Iy(:));
% Count=[hist(Iy(:),Value)]';
% count1=log2(Count/length(f_grad_y));
% figure,plot(Value,count1);
% axis([-150 150 -18 10]);
% title('垂直方向梯度概率分布图');
 

