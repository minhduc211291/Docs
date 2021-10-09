-----------------------------------------------------------------------------------------------------
 CREATE TABLE public.bbg_metadata (                                                                 
     ticker character varying(200)  NOT NULL,                                                       
     crncy character varying(50)  NULL,                                                             
     security_typ character varying(200)  NULL,                                                     
     security_tenor_one character varying(50)  NULL,                                                
     security_tenor_two character varying(50)  NULL,                                                
     name character varying(200)  NULL,                                                             
     vol_instrument_type character varying(10)  NULL,                                               
     vol_delta character varying(10)  NULL,                                                         
 CONSTRAINT bbg_metadata_pkey                                                                       
     PRIMARY KEY (ticker));
 CREATE TABLE public.crypto_binance_hist_15m (                                                      
     symbol character varying(20)  NOT NULL,                                                        
     timestamp timestamp with time zone  NOT NULL,                                                  
     open double precision  NULL,                                                                   
     high double precision  NULL,                                                                   
     low double precision  NULL,                                                                    
     close double precision  NULL,                                                                  
     volume double precision  NULL,                                                                 
     close_time double precision  NULL,                                                             
     quote_av double precision  NULL,                                                               
     trades double precision  NULL,                                                                 
     tb_base_av double precision  NULL,                                                             
     tb_quote_av double precision  NULL,                                                            
     ignore double precision  NULL,                                                                 
 CONSTRAINT crypto_binance_hist_15m_pkey                                                            
     PRIMARY KEY (symbol, "timestamp"));
 CREATE TABLE public.crypto_binance_hist_1d (                                                       
     symbol character varying(20)  NOT NULL,                                                        
     timestamp timestamp with time zone  NOT NULL,                                                  
     open double precision  NULL,                                                                   
     high double precision  NULL,                                                                   
     low double precision  NULL,                                                                    
     close double precision  NULL,                                                                  
     volume double precision  NULL,                                                                 
     close_time double precision  NULL,                                                             
     quote_av double precision  NULL,                                                               
     trades double precision  NULL,                                                                 
     tb_base_av double precision  NULL,                                                             
     tb_quote_av double precision  NULL,                                                            
     ignore double precision  NULL,                                                                 
 CONSTRAINT crypto_binance_hist_daily_pkey                                                          
     PRIMARY KEY (symbol, "timestamp"));
 CREATE TABLE public.crypto_binance_hist_1h (                                                       
     symbol character varying(20)  NOT NULL,                                                        
     timestamp timestamp with time zone  NOT NULL,                                                  
     open double precision  NULL,                                                                   
     high double precision  NULL,                                                                   
     low double precision  NULL,                                                                    
     close double precision  NULL,                                                                  
     volume double precision  NULL,                                                                 
     close_time double precision  NULL,                                                             
     quote_av double precision  NULL,                                                               
     trades double precision  NULL,                                                                 
     tb_base_av double precision  NULL,                                                             
     tb_quote_av double precision  NULL,                                                            
     ignore double precision  NULL,                                                                 
 CONSTRAINT crypto_binance_hist_hourly_pkey                                                         
     PRIMARY KEY (symbol, "timestamp"));
 CREATE TABLE public.crypto_binance_hist_1m (                                                       
     symbol character varying(20)  NOT NULL,                                                        
     timestamp timestamp with time zone  NOT NULL,                                                  
     open double precision  NULL,                                                                   
     high double precision  NULL,                                                                   
     low double precision  NULL,                                                                    
     close double precision  NULL,                                                                  
     volume double precision  NULL,                                                                 
     close_time double precision  NULL,                                                             
     quote_av double precision  NULL,                                                               
     trades double precision  NULL,                                                                 
     tb_base_av double precision  NULL,                                                             
     tb_quote_av double precision  NULL,                                                            
     ignore double precision  NULL,                                                                 
 CONSTRAINT crypto_binance_hist_minutely_pkey                                                       
     PRIMARY KEY (symbol, "timestamp"));
 CREATE TABLE public.crypto_binance_hist_4h (                                                       
     symbol character varying(20)  NOT NULL,                                                        
     timestamp timestamp with time zone  NOT NULL,                                                  
     open double precision  NULL,                                                                   
     high double precision  NULL,                                                                   
     low double precision  NULL,                                                                    
     close double precision  NULL,                                                                  
     volume double precision  NULL,                                                                 
     close_time double precision  NULL,                                                             
     quote_av double precision  NULL,                                                               
     trades double precision  NULL,                                                                 
     tb_base_av double precision  NULL,                                                             
     tb_quote_av double precision  NULL,                                                            
     ignore double precision  NULL,                                                                 
 CONSTRAINT crypto_binance_hist_4h_pkey                                                             
     PRIMARY KEY (symbol, "timestamp"));
 CREATE TABLE public.crypto_binance_hist_5m (                                                       
     symbol character varying(20)  NOT NULL,                                                        
     timestamp timestamp with time zone  NOT NULL,                                                  
     open double precision  NULL,                                                                   
     high double precision  NULL,                                                                   
     low double precision  NULL,                                                                    
     close double precision  NULL,                                                                  
     volume double precision  NULL,                                                                 
     close_time double precision  NULL,                                                             
     quote_av double precision  NULL,                                                               
     trades double precision  NULL,                                                                 
     tb_base_av double precision  NULL,                                                             
     tb_quote_av double precision  NULL,                                                            
     ignore double precision  NULL,                                                                 
 CONSTRAINT crypto_binance_hist_5m_pkey                                                             
     PRIMARY KEY (symbol, "timestamp"));
 CREATE TABLE public.crypto_binance_info (                                                          
     symbol character varying(20)  NOT NULL,                                                        
     status character varying(20)  NULL,                                                            
     baseAsset character varying(5)  NULL,                                                          
     baseAssetPrecision integer  NULL,                                                              
     quoteAsset character varying(5)  NULL,                                                         
     quoteAssetPrecision integer  NULL,                                                             
     baseCommissionPrecision integer  NULL,                                                         
     quoteCommissionPrecision integer  NULL,                                                        
     orderTypes character varying(200)  NULL,                                                       
     icebergAllowed boolean  NULL,                                                                  
     ocoAllowed boolean  NULL,                                                                      
     quoteOrderQtyMarketAllowed boolean  NULL,                                                      
     isSpotTradingAllowed boolean  NULL,                                                            
     isMarginTradingAllowed boolean  NULL,                                                          
     filters character varying(1000)  NULL,                                                         
     permissions character varying(100)  NULL,                                                      
 CONSTRAINT crypto_binance_info_pkey                                                                
     PRIMARY KEY (symbol));
 CREATE TABLE public.crypto_binance_orders (                                                        
     symbol character varying(20)  NOT NULL,                                                        
     orderId bigint  NOT NULL,                                                                      
     orderListId integer  NULL,                                                                     
     clientOrderId character varying(100)  NULL,                                                    
     transactTime timestamp with time zone  NULL,                                                   
     price double precision  NULL,                                                                  
     origQty double precision  NULL,                                                                
     executedQty double precision  NULL,                                                            
     cummulativeQuoteQty double precision  NULL,                                                    
     status character varying(20)  NULL,                                                            
     timeInForce character varying(20)  NULL,                                                       
     type character varying(20)  NULL,                                                              
     side character varying(5)  NULL,                                                               
     fills character varying(1000)  NULL,                                                           
 CONSTRAINT crypto_binance_orders_pkey                                                              
     PRIMARY KEY ("orderId"));
 CREATE TABLE public.crypto_binance_pos (                                                           
     symbol character varying(20)  NOT NULL,                                                        
     qty double precision  NULL,                                                                    
     traded_px double precision  NULL,                                                              
 CONSTRAINT crypto_binance_pos_pkey                                                                 
     PRIMARY KEY (symbol));
 CREATE TABLE public.crypto_binance_signal (                                                        
     symbol character varying(20)  NOT NULL,                                                        
     type character varying(100)  NOT NULL,                                                         
     lastupdated timestamp with time zone  NOT NULL,                                                
     action character varying(100)  NULL,                                                           
     status character varying(20)  NULL,                                                            
 CONSTRAINT crypto_binance_signal_pkey                                                              
     PRIMARY KEY (symbol, type, lastupdated));
 CREATE TABLE public.crypto_binance_trades (                                                        
     symbol character varying(20)  NOT NULL,                                                        
     id bigint  NOT NULL,                                                                           
     orderId bigint  NULL,                                                                          
     orderListId integer  NULL,                                                                     
     price double precision  NULL,                                                                  
     qty double precision  NULL,                                                                    
     quoteQty double precision  NULL,                                                               
     commission double precision  NULL,                                                             
     commissionAsset character varying(10)  NULL,                                                   
     time timestamp with time zone  NULL,                                                           
     isBuyer boolean  NULL,                                                                         
     isMaker boolean  NULL,                                                                         
     isBestMatch boolean  NULL,                                                                     
 CONSTRAINT crypto_binance_trades_pkey                                                              
     PRIMARY KEY (id));
 CREATE TABLE public.crypto_bitmex_hist (                                                           
     symbol character varying(20)  NOT NULL,                                                        
     timestamp timestamp with time zone  NOT NULL,                                                  
     bidSize double precision  NULL,                                                                
     bidPrice double precision  NULL,                                                               
     askSize double precision  NULL,                                                                
     askPrice double precision  NULL,                                                               
 CONSTRAINT crypto_hist_pkey                                                                        
     PRIMARY KEY (symbol, "timestamp"),                                                             
 CONSTRAINT crypto_hist_unique                                                                      
     UNIQUE (symbol, "timestamp"));
 CREATE TABLE public.crypto_bitmex_hist_daily (                                                     
     symbol character varying(20)  NOT NULL,                                                        
     date date  NOT NULL,                                                                           
     open double precision  NULL,                                                                   
     high double precision  NULL,                                                                   
     low double precision  NULL,                                                                    
     close double precision  NULL,                                                                  
 CONSTRAINT crypto_hist_daily_pkey                                                                  
     PRIMARY KEY (symbol, date));
 CREATE TABLE public.crypto_bitmex_inst (                                                           
     symbol character varying(20)  NOT NULL,                                                        
 CONSTRAINT crypto_inst_pkey                                                                        
     PRIMARY KEY (symbol));
 CREATE TABLE public.eq_hist (                                                                      
     date date  NOT NULL,                                                                           
     ticker character varying(50)  NOT NULL,                                                        
     px_open double precision  NULL,                                                                
     px_high double precision  NULL,                                                                
     px_low double precision  NULL,                                                                 
     px_last double precision  NULL,                                                                
     px_volume double precision  NULL,                                                              
     src character varying(20)  NULL,                                                               
 CONSTRAINT eq_hist_pkey                                                                            
     PRIMARY KEY (date, ticker));
 CREATE TABLE public.eq_info (                                                                      
     ticker character varying(50)  NOT NULL,                                                        
     key character varying(100)  NOT NULL,                                                          
     value character varying(2000)  NULL,                                                           
 CONSTRAINT eq_infp_pkey                                                                            
     PRIMARY KEY (ticker, key));
 CREATE TABLE public.eq_meta (                                                                      
     ticker character varying(200)  NOT NULL,                                                       
     security_name character varying(200)  NULL,                                                    
     crncy character varying(5)  NULL,                                                              
     industry_sector character varying(50)  NULL,                                                   
     orig_prim_exch_name character varying(20)  NULL,                                               
 CONSTRAINT eq_meta_pkey                                                                            
     PRIMARY KEY (ticker));
 CREATE TABLE public.fixing_eod (                                                                   
     date date  NOT NULL,                                                                           
     ticker character varying(30)  NOT NULL,                                                        
     type character varying(10)  NULL,                                                              
     px_last double precision  NULL,                                                                
 CONSTRAINT fixing_eod_pkey                                                                         
     PRIMARY KEY (date, ticker));
 CREATE TABLE public.fut_contract_meta (                                                            
     symbol character varying(20)  NOT NULL,                                                        
     fut_first_trade_dt date  NULL,                                                                 
     last_tradeable_dt date  NULL,                                                                  
     security_name character varying(100)  NULL,                                                    
     fut_month_yr character varying(10)  NULL,                                                      
 CONSTRAINT fut_contract_pkey                                                                       
     PRIMARY KEY (symbol));
 CREATE TABLE public.fut_generic_hist (                                                             
     date date  NOT NULL,                                                                           
     root_symbol character varying(5)  NOT NULL,                                                    
     symbol character varying(20)  NOT NULL,                                                        
     open double precision  NULL,                                                                   
     high double precision  NULL,                                                                   
     low double precision  NULL,                                                                    
     close double precision  NULL,                                                                  
     volume double precision  NULL,                                                                 
     openinterest double precision  NULL,                                                           
 CONSTRAINT fut_generic_hist_pkey                                                                   
     PRIMARY KEY (date, root_symbol, symbol));
 CREATE TABLE public.fut_hist (                                                                     
     date date  NOT NULL,                                                                           
     symbol character varying(20)  NOT NULL,                                                        
     px_open double precision  NULL,                                                                
     px_high double precision  NULL,                                                                
     px_low double precision  NULL,                                                                 
     px_settle double precision  NULL,                                                              
     px_volume double precision  NULL,                                                              
     open_int double precision  NULL,                                                               
     root_symbol character varying(5)  NOT NULL,                                                    
 CONSTRAINT fut_hist_pkey                                                                           
     PRIMARY KEY (date, root_symbol, symbol));
 CREATE TABLE public.fut_meta (                                                                     
     root_symbol character varying(2)  NOT NULL,                                                    
     multiplier double precision  NULL,                                                             
     minor_fx_adj double precision  NULL,                                                           
     description character varying(200)  NULL,                                                      
     exchange character varying(10)  NULL,                                                          
     sector character varying(200)  NULL,                                                           
     is_active boolean  NULL,                                                                       
     comment character varying(200)  NULL,                                                          
     bbg_symbol character varying(5)  NULL,                                                         
 CONSTRAINT fut_meta_pkey                                                                           
     PRIMARY KEY (root_symbol));
 CREATE TABLE public.fut_order (                                                                    
     id integer  NOT NULL,                                                                          
     root_symbol character varying(5)  NULL,                                                        
     symbol character varying(20)  NOT NULL,                                                        
 CONSTRAINT fut_order_chain_pkey                                                                    
     PRIMARY KEY (id));
 CREATE TABLE public.future_generic_current (                                                       
     generic character varying(100)  NOT NULL,                                                      
     date date  NOT NULL,                                                                           
     current character varying(100)  NULL,                                                          
     tenor_end character varying(100)  NULL,                                                        
 CONSTRAINT future_generic_current_pkey                                                             
     PRIMARY KEY (generic, date));
 CREATE TABLE public.fx_cross_hist (                                                                
     date date  NOT NULL,                                                                           
     fxcross character varying(13)  NOT NULL,                                                       
     tenor character varying(5)  NOT NULL,                                                          
     implied double precision  NULL,                                                                
     realized double precision  NULL,                                                               
 CONSTRAINT fx_cross_hist_pkey                                                                      
     PRIMARY KEY (date, fxcross, tenor));
 CREATE TABLE public.fx_cross_meta (                                                                
     fxcross character varying(13)  NOT NULL,                                                       
     fxpair1 character varying(6)  NOT NULL,                                                        
     fxpair2 character varying(6)  NOT NULL,                                                        
     actual_fxpair1 character varying(6)  NULL,                                                     
     actual_fxpair2 character varying(6)  NULL,                                                     
     crosspair character varying(6)  NULL,                                                          
     actual_crosspair character varying(6)  NULL,                                                   
 CONSTRAINT fx_cross_meta_pkey                                                                      
     PRIMARY KEY (fxcross));
 CREATE TABLE public.fxpair_hist (                                                                  
     date date  NOT NULL,                                                                           
     fxpair character varying(6)  NOT NULL,                                                         
     price double precision  NULL,                                                                  
     logret double precision  NULL,                                                                 
 CONSTRAINT fxpair_hist_pkey                                                                        
     PRIMARY KEY (date, fxpair));
 CREATE TABLE public.fxpair_meta (                                                                  
     fxpair character varying(6)  NOT NULL,                                                         
     ccy1 character varying(3)  NOT NULL,                                                           
     ccy2 character varying(3)  NOT NULL,                                                           
     inversed boolean  NULL,                                                                        
 CONSTRAINT fxpair_meta_pkey                                                                        
     PRIMARY KEY (fxpair));
 CREATE TABLE public.jpm_doc (                                                                      
     id integer  NOT NULL,                                                                          
     date date  NULL,                                                                               
     author character varying(200)  NULL,                                                           
     title character varying(300)  NULL,                                                            
     pages integer  NULL,                                                                           
     file_name character varying(200)  NULL,                                                        
 CONSTRAINT jpm_doc_pkey                                                                            
     PRIMARY KEY (id));
 CREATE TABLE public.mycareersfuture (                                                              
     Employer_Title character varying(400)  NOT NULL,                                               
     Industry_Exp character varying(200)  NOT NULL,                                                 
     Job_Type character varying(20)  NULL,                                                          
     Salary_From integer  NULL,                                                                     
     Salary_To integer  NULL,                                                                       
 CONSTRAINT mycareersfuture_pkey                                                                    
     PRIMARY KEY ("Employer_Title"));
 CREATE TABLE public.ois_meeting (                                                                  
     date date  NOT NULL,                                                                           
     ccy character varying(3)  NOT NULL,                                                            
     ticker character varying(20)  NOT NULL,                                                        
     start_dt date  NULL,                                                                           
     end_dt date  NULL,                                                                             
 CONSTRAINT ois_meeting_pkey                                                                        
     PRIMARY KEY (date, ccy, ticker));
 CREATE TABLE public.personal_bank (                                                                
     id integer  NOT NULL,                                                                          
     trans_date date  NULL,                                                                         
     value_date date  NULL,                                                                         
     description character varying(100) DEFAULT NULL::character varying NULL,                       
     change double precision  NULL,                                                                 
     balance double precision  NULL,                                                                
 CONSTRAINT personal_bank_pkey                                                                      
     PRIMARY KEY (id));
 CREATE TABLE public.rates_hist (                                                                   
     date date  NOT NULL,                                                                           
     src character varying(10)  NOT NULL,                                                           
     ticker character varying(50)  NOT NULL,                                                        
     px_last double precision  NULL,                                                                
 CONSTRAINT rates_hist_pkey                                                                         
     PRIMARY KEY (date, src, ticker));
 CREATE TABLE public.rates_meta (                                                                   
     ticker character varying(50)  NOT NULL,                                                        
     crncy character varying(10)  NOT NULL,                                                         
     tenor1 double precision  NULL,                                                                 
     tenor2 double precision  NULL,                                                                 
     ticker_bbg character varying(50)  NULL,                                                        
     prod character varying(20)  NOT NULL,                                                          
     is_avail boolean  NULL,                                                                        
 CONSTRAINT rates_meta_pkey                                                                         
     PRIMARY KEY (ticker, crncy, prod));
 CREATE TABLE public.rates_quote_live (                                                             
     src character varying(50)  NOT NULL,                                                           
     ticker character varying(50)  NOT NULL,                                                        
     quote_type integer  NOT NULL,                                                                  
     price double precision  NULL,                                                                  
     updated_time timestamp with time zone  NULL,                                                   
 CONSTRAINT rates_quote_live_pkey                                                                   
     PRIMARY KEY (ticker, quote_type, src));
 CREATE TABLE public.rv_map (                                                                       
     id integer  NOT NULL,                                                                          
     name character varying(50)  NOT NULL,                                                          
     alias character varying(50)  NOT NULL,                                                         
 CONSTRAINT rv_map_pkey                                                                             
     PRIMARY KEY (id));
 CREATE TABLE public.sector_meta (                                                                  
     icb character varying(4)  NOT NULL,                                                            
     sector_vn character varying(50)  NULL,                                                         
 CONSTRAINT sector_meta_pkey                                                                        
     PRIMARY KEY (icb));
 CREATE TABLE public.settings_df (                                                                  
     book character varying(10)  NOT NULL,                                                          
     tbl character varying(20)  NOT NULL,                                                           
     k character varying(20)  NOT NULL,                                                             
     v character varying(50) DEFAULT NULL::character varying NULL,                                  
 CONSTRAINT settings_df_pkey                                                                        
     PRIMARY KEY (book, tbl, k));
 CREATE TABLE public.sys_book (                                                                     
     id integer  NULL,                                                                              
     book character varying(10)  NOT NULL,                                                          
 CONSTRAINT sys_book_pkey                                                                           
     PRIMARY KEY (book));
 CREATE TABLE public.sys_pos_eod (                                                                  
     book character varying(10)  NOT NULL,                                                          
     underlying character varying(20)  NOT NULL,                                                    
     date date  NOT NULL,                                                                           
     qty double precision  NULL,                                                                    
     traded_px double precision  NULL,                                                              
     traded_mv double precision  NULL,                                                              
     closing_px double precision  NULL,                                                             
     closing_mv double precision  NULL,                                                             
     pnl_inception double precision  NULL,                                                          
     prev_close double precision  NULL,                                                             
     pnl_daily double precision  NULL,                                                              
     weight_mv double precision  NULL,                                                              
 CONSTRAINT sys_pos_eod_pkey                                                                        
     PRIMARY KEY (book, underlying, date),                                                          
 CONSTRAINT sys_pos_eod_fkey                                                                        
     FOREIGN KEY (book) REFERENCES sys_book(book) ON UPDATE CASCADE ON DELETE CASCADE);
 CREATE TABLE public.sys_pos_live (                                                                 
     book character varying(10)  NOT NULL,                                                          
     underlying character varying(20)  NOT NULL,                                                    
     qty double precision  NULL,                                                                    
     traded_px double precision  NULL,                                                              
     traded_mv double precision  NULL,                                                              
     live_px double precision  NULL,                                                                
     live_mv double precision  NULL,                                                                
     pnl_inception double precision  NULL,                                                          
 CONSTRAINT sys_pos_live_pkey                                                                       
     PRIMARY KEY (book, underlying),                                                                
 CONSTRAINT sys_pos_live_fkey                                                                       
     FOREIGN KEY (book) REFERENCES sys_book(book) ON UPDATE CASCADE ON DELETE CASCADE);
 CREATE TABLE public.vn_trade_hist (                                                                
     stt integer  NOT NULL,                                                                         
     ngay_giao_dich date  NULL,                                                                     
     ngay_thanh_toan date  NULL,                                                                    
     chung_khoan character varying(20)  NULL,                                                       
     so_luong double precision  NULL,                                                               
     gia double precision  NULL,                                                                    
     gia_tri double precision  NULL,                                                                
     phi double precision  NULL,                                                                    
     thue double precision  NULL,                                                                   
     thanh_tien double precision  NULL,                                                             
 CONSTRAINT vn_trade_hist_pkey                                                                      
     PRIMARY KEY (stt));
 CREATE TABLE public.vn_tx_fut (                                                                    
     Ngay date  NOT NULL,                                                                           
     Loai_giao_dich character varying(100)  NOT NULL,                                               
     Noi_dung character varying(500)  NOT NULL,                                                     
     Chung_khoan character varying(20) DEFAULT NULL::character varying NULL,                        
     So_luong double precision  NULL,                                                               
     Gia double precision  NULL,                                                                    
     Tang double precision  NULL,                                                                   
     Giam double precision  NULL,                                                                   
     So_du double precision  NOT NULL,                                                              
     Cho_thanh_toan double precision  NULL,                                                         
 CONSTRAINT vn_tx_fut_pkey                                                                          
     PRIMARY KEY ("Ngay", "Noi_dung", "So_du"));
 CREATE TABLE public.vn_tx_spot (                                                                   
     ngay date  NOT NULL,                                                                           
     loai_giao_dich character varying(100)  NOT NULL,                                               
     noi_dung character varying(500)  NOT NULL,                                                     
     chung_khoan character varying(20)  NULL,                                                       
     so_luong double precision  NULL,                                                               
     gia double precision  NULL,                                                                    
     tang double precision  NULL,                                                                   
     giam double precision  NULL,                                                                   
     so_du double precision  NOT NULL,                                                              
     cho_thanh_toan double precision  NULL);
 CREATE TABLE public.yc_curve (                                                                     
     id integer  NOT NULL,                                                                          
     curve_name character varying(50)  NULL,                                                        
 CONSTRAINT yc_curve_pkey                                                                           
     PRIMARY KEY (id),                                                                              
 CONSTRAINT yc_curve_name                                                                           
     UNIQUE (curve_name));
 CREATE TABLE public.yc_instrument (                                                                
     id integer  NOT NULL,                                                                          
     murex_ticker character varying(50)  NULL,                                                      
     bbg_ticker character varying(50)  NULL,                                                        
     instr_type character varying(20)  NULL,                                                        
     instr character varying(50)  NULL,                                                             
     reu_ticker character varying(50)  NULL,                                                        
 CONSTRAINT yc_instrument_pkey                                                                      
     PRIMARY KEY (id),                                                                              
 CONSTRAINT yc_ticker                                                                               
     UNIQUE (murex_ticker));
 CREATE TABLE public.yc_instrument_quote_eod (                                                      
     id integer  NOT NULL,                                                                          
     date date  NULL,                                                                               
     src character varying(10)  NULL,                                                               
     eod character varying(10)  NULL,                                                               
     ccy_code character varying(10)  NULL,                                                          
     instrument_id integer  NULL,                                                                   
     open_price double precision  NULL,                                                             
     high_price double precision  NULL,                                                             
     low_price double precision  NULL,                                                              
     last_price double precision  NULL,                                                             
     curve_spread double precision  NULL,                                                           
     maturity date  NULL,                                                                           
     discount_factor double precision  NULL,                                                        
     zero_coupon double precision  NULL,                                                            
     curve_id integer  NULL,                                                                        
     tenor_start character varying(10)  NULL,                                                       
     tenor_end character varying(10)  NULL,                                                         
 CONSTRAINT yc_instrument_quote_eod_pkey                                                            
     PRIMARY KEY (id),                                                                              
 CONSTRAINT yc_instrument_quote_eod_key                                                             
     UNIQUE (date, src, eod, curve_id, instrument_id),                                              
 CONSTRAINT fk_yc_instrument_quote_eod_instrument                                                   
     FOREIGN KEY (instrument_id) REFERENCES yc_instrument(id) ON UPDATE RESTRICT ON DELETE CASCADE);