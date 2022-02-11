DROP TABLE IF EXISTS public.fut_meta;

CREATE TABLE public.fut_meta
	(
	root_symbol  VARCHAR (2) NOT NULL,
	multiplier   DOUBLE PRECISION,
	minor_fx_adj DOUBLE PRECISION,
	description  VARCHAR (200),
	exchange     VARCHAR (10),
	sector       VARCHAR (200),
	is_active    BOOL,
	comment      VARCHAR (200),
	bbg_symbol   VARCHAR (5),
	CONSTRAINT fut_meta_pkey PRIMARY KEY (root_symbol)
	)
	WITH (OIDS = FALSE);



INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('CU', 125000, 1, 'EUR/USD', 'CME', 'Currency', '1', NULL, 'CUS');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('OJ', 15000, 0.01000000000000000020816681711721685132943093776702880859375, 'Orange Juice', 'NYCE', 'Agricultural', '0', 'Ticker not mapped in BBG', 'JO');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('LG', 100, 1, 'Petroleum Gas Oil', 'ICE', 'Non-Agricultural', '0', 'Ticker not mapped in BBG', 'QS');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('NV', 100000, 1, 'NZD/USD', 'CME', 'Currency', '1', NULL, 'NV');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('AD', 100000, 1, 'AUD/USD', 'CME', 'Currency', '1', NULL, 'AD');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('BO', 600, 0.01000000000000000020816681711721685132943093776702880859375, 'Soybean Oil', 'CBT', 'Agricultural', '1', NULL, 'BO');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('BP', 62500, 1, 'GBP/USD', 'CME', 'Currency', '1', NULL, 'BP');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('CC', 10, 1, 'Cocoa', 'NYCE', 'Agricultural', '1', NULL, 'CC');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('CD', 100000, 1, 'CAD/USD', 'CME', 'Currency', '1', NULL, 'CD');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('CT', 50000, 0.01000000000000000020816681711721685132943093776702880859375, 'Cotton #2', 'NYCE', 'Agricultural', '1', NULL, 'CT');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('DA', 200000, 1, 'Class III Milk', 'CME', 'Agricultural', '1', NULL, 'DA');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('DX', 1000, 1, 'USD Index', 'FINEX', 'Currency', '1', NULL, 'DX');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('ED', 2500, 1, 'Eurodollar 3m', 'CME', 'Rates', '1', NULL, 'ED');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('ES', 50, 1, 'S&P 500 (E-mini)', 'CME', 'Equities', '1', NULL, 'ES');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('FC', 50000, 0.01000000000000000020816681711721685132943093776702880859375, 'Cattle-Feeder', 'CME', 'Agricultural', '1', NULL, 'FC');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('FV', 1000, 1, 'US Treasury Note 5yr', 'CBT', 'Rates', '1', NULL, 'FV');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('GC', 100, 1, 'Gold', 'COMEX', 'Non-Agricultural', '1', NULL, 'GC');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('HG', 25000, 0.01000000000000000020816681711721685132943093776702880859375, 'Copper', 'COMEX', 'Non-Agricultural', '1', NULL, 'HG');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('HO', 42000, 1, 'Heating Oil', 'NYMEX', 'Non-Agricultural', '1', NULL, 'HO');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('JY', 125000, 1, 'JPY/USD', 'CME', 'Currency', '1', NULL, 'JY');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('KC', 37500, 0.01000000000000000020816681711721685132943093776702880859375, 'Coffee Arabica', 'NYCE', 'Agricultural', '1', NULL, 'KC');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('KW', 5000, 0.01000000000000000020816681711721685132943093776702880859375, 'Wheat-Kansas City', 'KCBT', 'Agricultural', '1', NULL, 'KW');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('LB', 110, 1, 'Lumber', 'CME', 'Agricultural', '1', NULL, 'LB');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('LC', 40000, 0.01000000000000000020816681711721685132943093776702880859375, 'Live Cattle', 'CME', 'Agricultural', '1', NULL, 'LC');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('LH', 40000, 0.01000000000000000020816681711721685132943093776702880859375, 'Lean Hogs', 'CME', 'Agricultural', '1', NULL, 'LH');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('LR', 10, 1, 'Coffee Robusta', 'EURONEXT', 'Agricultural', '1', NULL, 'LR');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('LS', 50, 1, 'Sugar  #5(White)', 'EURONEXT', 'Agricultural', '1', NULL, 'LS');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('MP', 500000, 0.01000000000000000020816681711721685132943093776702880859375, 'MEP/USD', 'CME', 'Currency', '1', NULL, 'MP');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('MW', 5000, 0.01000000000000000020816681711721685132943093776702880859375, 'Wheat-Spring', 'MGE', 'Agricultural', '1', NULL, 'MW');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('NG', 10000, 1, 'Natural Gas', 'NYMEX', 'Non-Agricultural', '1', NULL, 'NG');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('NK', 5, 1, 'Nikkei 225', 'CME', 'Equities', '1', NULL, 'NK');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('NQ', 20, 1, 'Nasdaq (E-mini)', 'CME', 'Equities', '1', NULL, 'NQ');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('RR', 2000, 1, 'Rice(Rough)', 'CBT', 'Agricultural', '1', NULL, 'RR');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('PA', 100, 1, 'Palladium', 'NYMEX', 'Non-Agricultural', '1', NULL, 'PA');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('PL', 50, 1, 'Platinum', 'NYMEX', 'Non-Agricultural', '1', NULL, 'PL');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('SB', 120000, 0.01000000000000000020816681711721685132943093776702880859375, 'Sugar #11', 'NYCE', 'Agricultural', '1', NULL, 'SB');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('SF', 125000, 1, 'CHF/USD', 'CME', 'Currency', '1', NULL, 'SF');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('SI', 5000, 0.01000000000000000020816681711721685132943093776702880859375, 'Silver', 'COMEX', 'Non-Agricultural', '1', NULL, 'SI');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('SM', 100, 1, 'Soybean Meal', 'CBT', 'Agricultural', '1', NULL, 'SM');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('TW', 100, 1, 'MSCI Taiwan', 'SGX', 'Equities', '1', NULL, 'TW');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('TU', 2000, 1, 'US Treasury Note 2yr', 'CBT', 'Rates', '1', NULL, 'TU');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('TY', 1000, 1, 'US Treasury Note 10y', 'CBT', 'Rates', '1', NULL, 'TY');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('US', 1000, 1, 'US Treasury Long Bond 30yr', 'CBT', 'Rates', '1', NULL, 'US');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('UX', 1000, 1, 'Volatility Index', 'CFE', 'Equities', '1', NULL, 'UX');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('CL', 1000, 1, 'Crude Oil', 'NYMEX', 'Non-Agricultural', '1', NULL, 'CL');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('CO', 1000, 1, 'Brent Crude', 'ICE', 'Non-Agricultural', '1', NULL, 'CO');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('DM', 5, 1, 'Dow e mini', 'CBT', 'Equities', '1', NULL, 'DM');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('XB', 42000, 1, 'Petroleum Gasoline', 'NYMEX', 'Non-Agricultural', '1', NULL, 'XB');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('YM', 100000, 1, 'AUD Treasury Bond 3Y', 'SFE', 'Rates', '1', NULL, 'YM');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('O ', 5000, 0.01000000000000000020816681711721685132943093776702880859375, 'Oats-CBT', 'CBT', 'Agricultural', '0', 'Ticker not mapped in BBG', 'O ');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('W ', 5000, 0.01000000000000000020816681711721685132943093776702880859375, 'Wheat', 'CBT', 'Agricultural', '0', 'Ticker not mapped in BBG', 'W ');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('S ', 100, 1, 'Soybean', 'CBT', 'Agricultural', '1', NULL, 'S ');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('RT', 100, 1, 'Russel 2000 (E-mini)', 'NYFE', 'Equities', '0', 'Ticker not mapped in BBG', 'RTY');
INSERT INTO fut_meta (root_symbol, multiplier, minor_fx_adj, description, exchange, sector, is_active, comment, bbg_symbol) VALUES ('C_', 5000, 0.01000000000000000020816681711721685132943093776702880859375, 'Corn', 'CBT', 'Agricultural', '0', 'Ticker not mapped in BBG', 'C ');
