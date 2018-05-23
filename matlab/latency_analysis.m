%************************************************************************
% Latency Analysis
% thesis_project
% 
% Author:  Sonnino Alberto
% Version: 4.1
%
% ***********************************************************************
close all;


% ***********************************************************************
% SERVER
% ***********************************************************************
% samples (in [ms]) 
% structure: set 1: send_credentials 
%            set 2: check_credentials 
% ***********************************************************************
samples_server = [
  % send_credentials
  359.000
  300.608
  331.337
  352.689
  301.799
  430.138
  334.888
  329.899
  296.109
  330.027
  293.856
  359.779
  396.540
  377.821
  300.108
  298.811
  398.811
  417.177
  363.849
  302.874
  405.786
  335.750
  329.414
  394.370
  288.684
  294.157
  383.112
  373.858
  362.748
  391.986
  388.761
  399.405
  328.553
  386.647
  367.137
  344.140
  296.044
  399.233
  335.677
  374.489
  393.644
  302.251
  305.564
  366.114
  356.878
  415.072
  401.930
  392.651
  294.571
  297.666
   
  % check_credentials
  965.0
  988.0
  942.7
  957.6
  969.6
  1007.1
  957.1
  1011.6
  945.8
  984.4
  981.1
  968.8
  984.1
  981.1
  933.9
  929.1
  1013.2
  933.3
  919.9
  970.9
  1001.9
  981.3
  935.1
  952.4
  961.2
  1011.5
  931.8
  999.3
  979.0
  953.1
  935.2
  958.1
  963.3
  928.4
  973.6
  938.6
  953.9
  973.0
  941.0
  944.8
  976.3
  942.3
  996.3
  1011.6
  987.2
  949.9
  973.1
  927.1
  1004.2
  1001.6 
];

% reshape for plotting
samples_server = reshape(samples_server,[50,2]);


% ***********************************************************************
% WEARABLE
% ***********************************************************************
% samples (in [ms]) 
% structure: set 1: get_location
%            set 2: get_credentials
%            set 3: show_credentials
%            set 4: verify_credentials
%            set 5: credential_presentation
% ***********************************************************************
samples_wearable = [
  % get_location
  94.612
  101.9824
  104.3797
  92.0629
  100.4968
  79.8433
  111.0276
  82.7840
  85.7631
  105.8833
  94.1429
  104.7907
  90.6764
  86.0189
  77.0987
  101.1703
  91.9464
  92.7856
  98.7695
  77.9377
  87.6414
  104.9331
  102.0460
  80.4328
  80.6152
  79.1847
  75.9856
  91.7021
  100.4996
  103.0485
  95.7931
  79.8078
  99.5987
  80.4770
  80.7723
  79.4209
  81.0646
  82.0570
  83.1166
  87.7046
  87.6648
  83.9232
  85.1902
  109.4821
  102.3029
  96.7214
  82.6695
  83.7139
  78.6168
  110.2722
   
  % get_credentials
  293.68
  317.9633
  300.4686
  271.7631
  254.4683
  308.0700
  350.9987
  254.9650
  265.2274
  281.5568
  243.6363
  315.3061
  282.2134
  350.3996
  282.1894
  307.8556
  253.0781
  279.7414
  253.8727
  324.0010
  337.2752
  276.1504
  315.4753
  269.4982
  297.2781
  332.7304
  305.1324
  274.3337
  270.0946
  288.1110
  284.5930
  277.1877
  300.5309
  322.1723
  284.7915
  285.3813
  249.6131
  237.8143
  269.0326
  272.2438
  311.7343
  347.3572
  344.8662
  288.7328
  263.1935
  324.6806
  324.1437
  321.9494
  322.3066
  247.3867
    
  % show_credentials
  1281.0
  1313.6
  1252.3
  1304.0
  1300.8
  1237.7
  1232.2
  1280.7
  1339.8
  1260.5
  1291.9
  1245.6
  1313.1
  1249.6
  1281.7
  1306.5
  1331.0
  1339.8
  1287.0
  1234.7
  1236.0
  1249.9
  1324.6
  1249.5
  1321.2
  1248.1
  1335.9
  1261.7
  1242.1
  1249.1
  1295.8
  1277.5
  1262.0
  1323.3
  1291.9
  1287.3
  1334.4
  1253.5
  1313.9
  1313.5
  1265.6
  1289.6
  1226.6
  1223.8
  1284.9
  1316.7
  1336.6
  1233.5
  1289.8
  1277.0
      
  % verify_credentials
  27.760
  31.6715
  27.8226
  29.2664
  32.7667
  27.1378
  22.8744
  31.8324
  29.2167
  26.1507
  33.2787
  24.6972
  29.4528
  28.9258
  26.5080
  23.7868
  22.4871
  26.8840
  24.2522
  30.2670
  26.3205
  31.5527
  30.3609
  28.5487
  24.1718
  32.8388
  25.1541
  32.4745
  24.6927
  26.3561
  23.1796
  29.3159
  24.2136
  22.7082
  30.2381
  26.0659
  29.5435
  26.4705
  29.1741
  22.4484
  32.3190
  31.0974
  30.4899
  31.2368
  26.4642
  29.0623
  28.5983
  28.0937
  25.2624
  24.9688
  
  % credential_presentation
  52.5409
  53.8524
  54.5582
  55.2110
  57.2763
  52.9944
  62.9308
  63.4209
  58.1336
  58.1148
  56.3498
  62.8998
  56.7170
  53.7113
  61.5044
  56.9557
  55.2312
  57.1208
  53.5395
  53.9532
  63.3890
  63.5531
  59.1160
  53.1123
  55.1507
  56.5296
  61.9813
  52.5954
  52.9171
  54.3844
  59.9769
  60.9391
  59.9609
  57.6684
  58.7876
  55.8675
  61.0902
  54.6169
  60.4156
  54.5535
  56.7081
  59.7032
  61.5041
  53.3610
  63.2415
  61.4515
  58.0861
  57.4929
  57.6201
  55.9844
];

% reshape for plotting
samples_wearable = reshape(samples_wearable,[50,5]);


% plot 1
figure; 
data = [samples_server(:,1) samples_wearable(:,2) samples_wearable(:,1)];
bp = boxplot(data(:,:),'Colors','kkk',...
    'labels',{'send credentials', 'get credentials','get location'});
ylabel('time [ms]'); grid on; box on;
set(findobj(gca,'Type','text'),'FontSize',16)
set(findobj('type','axes'),'fontsize',16)
set(bp(:,:),'Color','k','linewidth',2);
set(gca,'FontSize',16,'TickLabelInterpreter','none','XColor',...
    [0.501960813999176 0.501960813999176 0.501960813999176],...
    'YColor',...
    [0.501960813999176 0.501960813999176 0.501960813999176],'ZColor',...
    [0.501960813999176 0.501960813999176 0.501960813999176]...
);

% plot 2
data = [samples_wearable(:,3) samples_server(:,2)];
figure; 
bp = boxplot(data(:,:),'Colors','kkk',...
    'labels',{'show credentials','check credentials'});
ylabel('time [ms]'); grid on; box on;
set(findobj(gca,'Type','text'),'FontSize',16)
set(findobj('type','axes'),'fontsize',16)
set(bp(:,:),'Color','k','linewidth',2);
set(gca,'FontSize',16,'TickLabelInterpreter','none','XColor',...
    [0.501960813999176 0.501960813999176 0.501960813999176],'XTick',[1 2],...
    'YColor',...
    [0.501960813999176 0.501960813999176 0.501960813999176],'ZColor',...
    [0.501960813999176 0.501960813999176 0.501960813999176]...
);

% plot 3
figure; 
bp = boxplot(samples_wearable(:,4:5),'Colors','kkk',...
    'labels',{'verify credentials','credentials presentation'});
ylabel('time [ms]'); grid on; box on;
set(findobj(gca,'Type','text'),'FontSize',16)
set(findobj('type','axes'),'fontsize',16)
set(bp(:,:),'Color','k','linewidth',2);
set(gca,'FontSize',16,'TickLabelInterpreter','none','XColor',...
    [0.501960813999176 0.501960813999176 0.501960813999176],'XTick',[1 2],...
    'YColor',...
    [0.501960813999176 0.501960813999176 0.501960813999176],'ZColor',...
    [0.501960813999176 0.501960813999176 0.501960813999176]...
);

% ***********************************************************************