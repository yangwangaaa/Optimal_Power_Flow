function p_stat = stat_hr_profile(Nbus,Tpred)

% normalized hourly demand data 

daily_stat = ...
    [	1		0.69	0.62	0.60	0.60	0.60	0.62	0.67	0.78	0.92	0.97	0.98	0.99	1.00	0.99	0.99	0.98	0.95	0.94	0.98	0.99	0.97	0.90	0.83	0.76	0.69
        2		0.77	0.71	0.68	0.67	0.67	0.68	0.70	0.78	0.87	0.92	0.93	0.93	0.95	0.95	0.95	0.93	0.92	0.91	0.93	0.99	1.00	0.97	0.91	0.83	0.77
        3		0.72	0.65	0.61	0.60	0.59	0.60	0.63	0.71	0.84	0.95	0.99	0.99	0.99	0.93	0.92	0.93	0.94	0.93	0.91	0.95	1.00	0.94	0.88	0.79	0.72
        4		0.76	0.70	0.66	0.64	0.64	0.64	0.67	0.76	0.88	0.97	0.99	0.98	0.97	0.96	0.96	0.95	0.94	0.95	0.97	0.95	1.00	0.96	0.91	0.83	0.76
        5		0.83	0.79	0.78	0.77	0.78	0.78	0.80	0.88	0.98	1.00	0.98	0.97	0.96	0.95	0.94	0.93	0.92	0.91	0.92	0.92	0.93	0.92	0.90	0.86	0.83
        6		0.69	0.62	0.60	0.60	0.60	0.62	0.67	0.78	0.92	0.97	0.98	0.99	1.00	0.99	0.99	0.98	0.95	0.94	0.98	0.99	0.97	0.90	0.83	0.76	0.69
        7		0.77	0.71	0.68	0.67	0.67	0.68	0.70	0.78	0.87	0.92	0.93	0.93	0.95	0.95	0.95	0.93	0.92	0.91	0.93	0.99	1.00	0.97	0.91	0.83	0.77
        8		0.72	0.65	0.61	0.60	0.59	0.60	0.63	0.71	0.84	0.95	0.99	0.99	0.99	0.93	0.92	0.93	0.94	0.93	0.91	0.95	1.00	0.94	0.88	0.79	0.72
        9		0.76	0.70	0.66	0.64	0.64	0.64	0.67	0.76	0.88	0.97	0.99	0.98	0.97	0.96	0.96	0.95	0.94	0.95	0.97	0.95	1.00	0.96	0.91	0.83	0.76];
p_stat = daily_stat(1:Nbus,2:Tpred+1);
p_stat = p_stat./min(min(p_stat));

% p_stat = repmat(daily_stat(1,1:Tpred)/mean(daily_stat(1,1:Tpred)),Nbus,1);

end