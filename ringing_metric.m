function rm = ringing_metric( bw,d0 )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here
[m, n]=size(bw);
rm1=zeros(m,n);%0��
rm2=zeros(m,n);%45��
rm3=zeros(m,n);%95��
rm4=zeros(m,n);%135��
cos45=cos(45/180*pi);
sin45=sin(45/180*pi);
cos135=cos(135/180*pi);
sin135=sin(135/180*pi);

lambda=2;
for i=1+d0+lambda:m-(d0+lambda)
    for j=1+d0+lambda:n-(d0+lambda)
        if(bw(i,j)==1)
            %0�ȼ��
            for d=d0-lambda:d0+lambda
                id=i+d*1;
                jd=j;
                if(bw(id,jd)==1)
                    rm1(i,j)=1;
                    for s=1:d-1
                        is=i+s*1;
                    	js=j;
                        if(bw(is,js)==1)
                            rm1(i,j)=0;
                            break;
                        end
                    end
                end
            end
            %45�ȼ��
            for d=d0-lambda:d0+lambda
                id=round(i+d*cos45);
                jd=round(j+d*sin45);
                if(bw(id,jd)==1)
                    rm2(i,j)=1;
                    for s=1:d-1
                        is=round(i+s*cos45);
                    	js=round(j+s*sin45);
                        if(bw(is,js)==1)
                            rm2(i,j)=0;
                            break;
                        end
                    end
                end
            end
            %90�ȼ��
            for d=d0-lambda:d0+lambda
                id=i;
                jd=j+d*1;
                if(bw(id,jd)==1)
                    rm3(i,j)=1;
                    for s=1:d-1
                        is=i;
                    	js=j+s*1;
                        if(bw(is,js)==1)
                            rm3(i,j)=0;
                            break;
                        end
                    end
                end
            end
            %135�ȼ��
            for d=d0-lambda:d0+lambda
                id=round(i+d*cos135);
                jd=round(j+d*sin135);
                if(bw(id,jd)==1)
                    rm4(i,j)=1;
                    for s=1:d-1
                        is=round(i+s*cos135);
                    	js=round(j+s*sin135);
                        if(bw(is,js)==1)
                            rm4(i,j)=0;
                            break;
                        end
                    end
                end
            end            
        end
    end
end

rm=sum(rm1(:))+sum(rm2(:))+sum(rm3(:))+sum(rm4(:));

end

