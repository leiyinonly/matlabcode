% clc 
% clear all 
close all
f=im2double(imread('img173.bmp'));
p=fspecial('motion',10,45);
g=imfilter(f,p,'circular','conv');
figure,imshow(g);
imwrite(g,'10_img173.bmp');
% 
% bg=edge(g,'canny',0.1);
% rg=ringing_metric(bg,5)
% figure,imshow(bg,[]);
% 
% pt1=fspecial('motion',10,0);
% d1=edgetaper(g,pt1);
% d1=deconvlucy(d1,pt1,20);
% figure,imshow(d1);
% imwrite(d1,'lena_10_0_20.png');
% 
% bd1=edge(d1,'canny',0.1);
% rd1=ringing_metric(bd1,5)
% figure,imshow(bd1,[]);
% 
% pt2=fspecial('motion',10,0);
% d2=edgetaper(g,pt2);
% d2=deconvlucy(d2,pt2,40);
% figure,imshow(d2);
% imwrite(d2,'lena_10_0_40.png');
% 
% bd2=edge(d2,'canny',0.1);
% rd2=ringing_metric(bd2,5)
% figure,imshow(bd2,[]);
% 
% pt3=fspecial('motion',10,0);
% d3=edgetaper(g,pt3);
% d3=deconvlucy(d3,pt3,60);
% figure,imshow(d3);
% imwrite(d3,'lena_10_0_60.png');
% 
% bd3=edge(d3,'canny',0.1);
% rd3=ringing_metric(bd3,5)
% figure,imshow(bd3,[]);
% 
% rm1=(rd1-rg)/256
% rm2=(rd2-rg)/256
% rm3=(rd3-rg)/256

% o=im2double(rgb2gray(imread('redTree.png')));
% j=im2double(rgb2gray(imread('redTree_jdeblur.jpg')));
% k=im2double(rgb2gray(imread('redTree_kdeblur.jpg')));
% s=im2double(rgb2gray(imread('redTree_sdeblur.jpg')));
% 
% o=im2double(rgb2gray(imread('keeper_kernel01.jpg')));
% j=im2double(rgb2gray(imread('keeper_kernel01_jdeblur.jpg')));
% k=im2double(rgb2gray(imread('keeper_kernel01_kdeblur.jpg')));
% s=im2double(rgb2gray(imread('keeper_kernel01_sdeblur.jpg')));
% 
% o=im2double(rgb2gray(imread('ian1.jpg')));
% j=im2double(rgb2gray(imread('ian1_jdeblur.jpg')));
% k=im2double(rgb2gray(imread('ian1_kdeblur.jpg')));
% s=im2double(rgb2gray(imread('ian1_sdeblur.jpg')));

% o=im2double((imread('lena_10_0.png')));
% j=im2double((imread('lena_10_0_20.png')));
% k=im2double((imread('lena_10_0_40.png')));
% s=im2double((imread('lena_10_0_60.png')));

% o=im2double(rgb2gray(imread('net1_600_800_kernel02.png')));
% j=im2double(rgb2gray(imread('net1_600_800_kernel02_jdeblur.png')));
% k=im2double(rgb2gray(imread('net1_600_800_kernel02_kdeblur.png')));
% s=im2double(rgb2gray(imread('net1_600_800_kernel02_sdeblur.png')));

% 
% figure,imshow(o,[]);
% figure,imshow(j,[]);
% figure,imshow(k,[]);
% figure,imshow(s,[]);
% 
% [m n]=size(o);
% [bo tho]=edge(o,'canny',0.1);
% figure,imshow(bo,[]);
% 
% [bj thj]=edge(j,'canny',0.1);
% figure,imshow(bj,[]);
% 
% [bk thk]=edge(k,'canny',0.1);
% figure,imshow(bk,[]);
% 
% [bs ths]=edge(s,'canny',0.1);
% figure,imshow(bs,[]);
% 
% rmo = ringing_metric( bo,5 )
% rmj = ringing_metric( bj,5 )
% rmk = ringing_metric( bk,5)
% rms = ringing_metric( bs,5 )
% 
% % mj=(rmj-rmo)/((m*n))*100
% % mk=(rmk-rmo)/((m*n))*100
% % ms=(rms-rmo)/((m*n))*100
% 
% xj=(rmj-rmo)/(rmo)
% xk=(rmk-rmo)/(rmo)
% xs=(rms-rmo)/(rmo)
% 
% mj=normalize(xj)
% mk=normalize(xk)
% ms=normalize(xs)
% mj=(rmj-rmo)/(sqrt(m*n))
% mk=(rmk-rmo)/(sqrt(m*n))
% ms=(rms-rmo)/(sqrt(m*n))

% o=im2double(imread('lena.bmp'));
% f=im2double(imread('lena_10_50.bmp'));%lena_circular_10_50,lena_10_50
% [m n]=size(f);
% p=fspecial('motion',10,50);
% g=edgetaper(f,p);
% g=deconvlucy(g,p,10);
% figure,imshow(f,[]);
% figure,imshow(g);
% 
% 
% h=edgetaper(f,p);
% h=deconvlucy(h,p,100);
% figure,imshow(h);
% figure,imshow(o);
% % ff=fft2(f);
% % ff=abs(log(1+abs(ff)));
% % ff=fftshift(ff);
% % figure,imshow(ff,[]);
% % 
% % fg=fft2(g);
% % fg=abs(log(1+abs(fg)));
% % fg=fftshift(fg);
% % figure,imshow(fg,[]);
% % 
% % fh=fft2(h);
% % fh=abs(log(1+abs(fh)));
% % fh=fftshift(fh);
% % figure,imshow(fh,[]);
% % 
% % fo=fft2(o);
% % fo=abs(log(1+abs(fo)));
% % fo=fftshift(fo);
% % figure,imshow(fo,[]);
% 
% [bf thf]=edge(f,'canny',0.1);
% thf
% figure,imshow(bf,[]);
% 
% [bg thg]=edge(g,'canny',0.1);
% thg
% figure,imshow(bg,[]);
% 
% [bh thg]=edge(h,'canny',0.1);
% thg
% figure,imshow(bh,[]);
% 
% [bo tho]=edge(o,'canny',0.1);
% tho
% figure,imshow(bo,[]);
% 
% rmf = ringing_metric( bf )
% rmg = ringing_metric( bg )
% rmh = ringing_metric( bh )
% rmo = ringing_metric( bo )
% 
% m1=(rmg-rmf)/(sqrt(m*n))
% m2=(rmh-rmf)/(sqrt(m*n))
% psize=size(p);
% padsize=([21 21]-psize)/2;
% p=padarray(p,padsize,0, 'both');
% % figure,imshow(p,[]);
% 
% bhs = floor(21/2);
% 
% ypad = padarray(f, [1 1] * bhs, 'replicate', 'both');
%     for a = 1:4 
%       ypad = edgetaper(ypad,p); 
%     end;
% figure,imshow( ypad,[]);
% 
% tmp = fast_deconv_bregman(ypad, p, 3000,1);
% figure,imshow( tmp,[]);

% f=im2double(f);
% psf=fspecial('motion',4,30);
% g=imfilter(f,psf,'circular');
% figure,imshow(g,[]);
% psf1=fspecial('motion',18,43);
% opts.nb_lambda = 3000;
% opts.nb_alpha = 1.0;
% 
% y= edgetaper(g, psf); 
% tic
% tmp = fast_deconv_bregman(y, psf1, opts.nb_lambda, opts.nb_alpha);
% toc
% 
% tic
% rl=deconvlucy(y,psf1,50);
% toc
% 
% figure,imshow(rl,[]);
% figure,imshow(tmp,[]);



% 
% b=im2double(f);
% fb=bfilter(b,5,[3,0.05]);
% figure,imshow(fb,[]);
% % imwrite(fb,'keeper_kernel_1_bfilter.jpg');
% % % dt=0.1; h=1;
% dt=0.001;h=1;%dt越小，保边特性越好
% iter=20;      % iterations
% lam=0.1; % complex diffusion across the edge 
% lam_tld=0.5;      % real diffusion in level-sets direction
% a = 0.30;  % slope of "soft sign"
% % fb=rgb2gray(fb);
% fs=shockfilter(fb,iter,dt,h,'cmp',[lam,lam_tld,a]);
% figure,imshow(fs,[]);
% imwrite(fs,'lion_bfilter_shock.jpg');
% test_blind_deconv
% 梯度滤波器
% dx = [-1 1; 0 0];
% dy = [-1 0; 1 0];
% 
% fx = conv2(g, dx, 'valid');    %提取图像的梯度图像
% fy = conv2(g, dy, 'valid');
% 
% ff=abs(fx)+abs(fy);
% figure,imshow(ff,[]);
% 
% l1norm=norm(ff,1);
% l2norm=norm(ff,2);
% k=l1norm/l2norm
% 
% fbx = conv2(fb, dx, 'valid');    %提取图像的梯度图像
% fby = conv2(fb, dy, 'valid');
% 
% ffb=[fbx fby];
% figure,imshow(ffb,[]);
% 
% fsx = conv2(fs, dx, 'valid');    %提取图像的梯度图像
% fsy = conv2(fs, dy, 'valid');
% 
% ffs=[fsx fsy];
% figure,imshow(ffs,[]);


