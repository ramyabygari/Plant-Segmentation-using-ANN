s='DJI_0875';
slol='';
img=imread(['/home/ramya/Downloads/plant/' s '.JPG']);
figure(1)
imshow(img)
img=imcrop(img);
imglol=decorrstretch(img,'tol',0.2);
[m,n,channels]=size(img);
counter=0;
for i=1:500:m-500

    for j=1:500:n-500
         img2=img(i:i+499,j:j+499,1:3);
         counter=counter+1;
         size(img2)
         imwrite(img2,['/home/ramya/Downloads/plant/original/crop/' s slol num2str(counter) ],'jpg')
     end
%     disp("j")
%     disp(j)%     
end
counter=0;
for i=1:500:m-500

    for j=1:500:n-500
         img2=imglol(i:i+499,j:j+499,1:3);
         counter=counter+1;
         size(img2)
         imwrite(img2,['/home/ramya/Downloads/plant/decorr/crop/' s slol num2str(counter) ],'jpg')
     end
%     disp("j")
%     disp(j)%     
end
imwrite(img,['/home/ramya/Downloads/plant/original/uncrop/' s slol],'jpg')
imwrite(imglol,['/home/ramya/Downloads/plant/decorr/uncrop/' s slol],'jpg')