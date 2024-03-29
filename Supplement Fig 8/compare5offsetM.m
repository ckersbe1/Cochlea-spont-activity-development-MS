function [h, p, handle] = compare5offsetM(group1, group2, group3, group4,group5, conditions, ylbl, dim, markSz, color1, color2)
       
       if nargin < 10
           color1 = 'k';
           color2 = 'k';
       end
       if nargin < 9
           meanMarkSize = 12;
           markSize = 10;
       else
           markSize = markSz(1);
           meanMarkSize = markSz(2);
       end
       if size(group1,2) > size(group1,1)
           group1 = group1';
           group2 = group2';
           group3 = group3';
           group4 = group4';
           group5 = group5';
       end
       
       m = size(group1,1);
       m2 = size(group2,1);
       m3 = size(group3,1);
       m4 = size(group4,1);
       m5 = size(group5,1);
       
       l_grey = [0.7 0.7 0.7];
       
       mean1 = nanmean(group1,1);
       std1 = nanstd(group1,1);
       mean2 = nanmean(group2,1);
       std2 = nanstd(group2,1);
       mean3 = nanmean(group3,1);
       std3 = nanstd(group3,1);
       mean4 = nanmean(group4,1);
       std4 = nanstd(group4,1);
       mean5 = nanmean(group5,1);
       std5 = nanstd(group5,1);

%        
       
      % h = figure;
       scatter(0.8*ones(m,1), group1,markSize,l_grey,'filled','jitter','on', 'jitterAmount',0.1);
       hold on;
       scatter(1.8*ones(m2,1), group2,markSize,l_grey,'filled','jitter','on', 'jitterAmount',0.1);
       scatter(2.8*ones(m3,1), group3,markSize,l_grey,'filled','jitter','on', 'jitterAmount',0.1);
       scatter(3.8*ones(m4,1), group4,markSize,l_grey,'filled','jitter','on', 'jitterAmount',0.1);
       scatter(4.8*ones(m5,1), group5,markSize,l_grey,'filled','jitter','on', 'jitterAmount',0.1);
    %   scatter(7*ones(m6,1), group6,markSize,l_grey,'filled');
      % plot([0.8*ones(m,1) 1.8*ones(m2,1)]',[group1 group2]','Color',l_grey); % for lines
      % plot([1.8*ones(m2,1) 2.8*ones(m3,1)]',[group2 group3]','Color',l_grey); % for lines
      % plot([2.8*ones(m3,1) 3.8*ones(m4,1)]',[group3 group4]','Color',l_grey); % for lines
      % plot([3.8*ones(m4,1) 4.8*ones(m5,1)]',[group4 group5]','Color',l_grey); % for lines
       
       errorbar([0.8], mean1, std1,'LineStyle', 'none','LineWidth',2,'Color',color1,'CapSize',0,'Marker','.','MarkerSize',meanMarkSize);
       errorbar([1.8], mean2, std2,'LineStyle', 'none','LineWidth',2,'Color',color1,'CapSize',0,'Marker','.','MarkerSize',meanMarkSize);
       errorbar([2.8], mean3, std3,'LineStyle', 'none','LineWidth',2,'Color',color1,'CapSize',0,'Marker','.','MarkerSize',meanMarkSize);
       errorbar([3.8], mean4, std4,'LineStyle', 'none','LineWidth',2,'Color',color1,'CapSize',0,'Marker','.','MarkerSize',meanMarkSize);
       errorbar([4.8], mean5, std5,'LineStyle', 'none','LineWidth',2,'Color',color1,'CapSize',0,'Marker','.','MarkerSize',meanMarkSize);

       xlim([0.25 6]);
       ylim([0 110])
       xticks([1 2 3 4 5]);
       xtickangle(45);
       xticklabels(conditions);
       ylabel(ylbl,'FontSize',8);
%        [h,p] = ttest2(group1,group2);
%        pt(5) = p;
%        disp(p);
%        [h,p] = ttest2(group3,group4);
%        disp(p)
       handle = gcf;
       figQuality(gcf,gca,dim);
end
