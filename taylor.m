close all;

%̩��ͼ�򵥵�˵����һ�ֿ��Ա�ʾ��׼� �������������ϵ������ָ���ͼ���ȵ�һR?��RMSE�Ⱥ��������ͼ����ֱ�ۡ�
% ����ͼ�����ԣ�����ͼλ�úͳߴ�
set(gcf,'units','inches','position',[0,8.0,12.0,8.0]);
set(gcf,'DefaultAxesFontSize',18); % �����������С
%��ȡ���ݣ�sd rmse �� r��
data=xlsread('.\taylor.xls');%�ļ�·��  

sdev = data(:,1);
crmsd = data(:,2);
ccoef = data(:,3);
%mmodel ID���������ֶ���������ΪҪÿ���������ñ�־
ID = {'Obs','Seasonal','Trend','Remainder','Rainfall'};
label = ID;
%>>���� taylor_diagram
[hp, ht, axl] = taylor_diagram(sdev,crmsd,ccoef, ...
    'markerLabel',label, 'markerLegend', 'on', ...
    'markerDisplayed', 'colorBar', 'titleColorbar', 'RMSD', 'locationColorBar','EastOutside',  ...
    'styleSTD', '-','styleCOR', '--','colSTD','k', 'colCOR','k','colOBS','r', 'markerObs','o', ...
    'markerSize',15, 'tickRMS',[0:3:15],'limSTD',15, ...
    'tickRMSangle', 115, 'showlabelsRMS', 'on', ...
    'titleRMS','on', 'titleOBS','Observation');
% �����ļ�
%writepng(gcf,'taylor fig.png');
saveas(gcf, 'taylor', 'png');