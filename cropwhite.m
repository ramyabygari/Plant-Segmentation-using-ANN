figure(50)
bsa=BW;
asd=BW;
imshow(maskedRGBImage)
Z=inputImage;
red = Z(:,:,1);
green = Z(:,:,2); 
blue = Z(:,:,3);
l=size(red);
figure(51)
imshow(BW)
counter=0;
for i=1:l(1)
    for j=1:l(2)
        if (red(i,j)>180&&green(i,j)>180&&blue(i,j)>180)
            counter=counter+1;
            bsa(i,j)=0;
        end
    end
end
figure(52)
imshow(bsa)
[m,n,channels]=size(bsa);
counter=0;
for i=1:500:m-500

    for j=1:500:n-500
         img2=bsa(i:i+499,j:j+499);
         counter=counter+1;
         size(img2)
         imwrite(img2,['/home/ramya/Downloads/plant/segmented/crop/' s slol num2str(counter) ],'jpg')
%          disp("j")
%          disp(j)
     end
%     disp("j")
%     disp(j)
%     
end
imwrite(bsa,['/home/ramya/Downloads/plant/segmented/uncrop/' s slol],'jpg')