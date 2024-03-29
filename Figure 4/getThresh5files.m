function [thresh] = getThresh5files(file1,file2,file3,file4)

noAtten = [102 105 107 103 104 103 102 100 110 109 110 110 108];
Atten10 = noAtten - 10;
Atten20 = noAtten - 20;
Atten30 = noAtten - 30;
Atten40 = noAtten - 40;
Atten50 = noAtten - 50;
Atten60 = noAtten - 60;
Atten70 = noAtten - 70;
Atten80 = noAtten - 80;
Atten90 = noAtten - 90;

attenMatx = [noAtten;Atten10;Atten20;Atten30;Atten40;Atten50;Atten60;Atten70];

for i = 1:13
    if file1(i) == 0
       thresh(i) = noAtten(i);
    else
        if file2(i) == 0
            thresh(i) = Atten10(i);
        else
            if file3(i) == 0
                thresh(i) = Atten30(i);
            else
                if file4(i) == 0
                    thresh(i) = Atten50(i);
                else
                    if file5(i) == 0
                        thresh(i) = Atten70(i);
                    else
                        thresh(i) = Atten90(i);
                    end
                end
            end
        end
    end
end



end

