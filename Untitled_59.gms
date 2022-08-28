*Energy-Project Model - Multi Objective

Sets
t        set for time horizon (20 years)              /1395*1415/
r        set for type of resources                    /Oil, Gas/
f        set for type of fuels                        /Petrol, Kerosene, GasOil, Naft_Kure/
q        set for type of power plants                 /BAGT, PGGT, GENUGT, BAMaz/
d        set for type of dissagregation               /Household, Agriculture, Industry, Commercial/
g        set for type of gas production               /Methane, Ethane, Propane, Buthane/
re       set for refineries                           /Geshm, PGS, Hormozan, Siahfam, Majid, Lavan/
gf       set for gas fields                           /Sarkhun, Kish, Geshu, Gavarzin, Madar, Hengam/
of       set for oil fields                           /Alvand, Belal, Tosan, Resalat, Sivand, Nosrat/
*y        set for loop itteration                      /1*11/

;

Scalars
BigM             BigM                                            /999999999999/
etta_extraction  Efficiency of extraction                        /0.93/
etta_preprocess  Efficiency of pre-processing                    /0.9/
etta_tr1         Efficiency of oil transportation to refineries  /0.98/
etta_tr2         Efficiency of fuels transportation to consumers /0.98/
etta_tr3         Efficiency of Gas transportation to refineries  /0.98/
etta_trg         Efficiency of Gas transportation                /0.98/
LHV              LHV of methane ( MJ per kg )                    /5000/
MD               Methane Density (kg per m3)                     /0.657/
PV_Percentage    the portion of PV from available electricity    /0/
RM               Reserve margin (20 %)                           /1.2/
EfficiencyPV     Productivity of PVs (MW per ha)                 /0.273/
EP               Electricity Price ($ per MW)                    /43800/
dr               Discount Rate (0-1)                             /0.10/
n                Time Horizon (years)                            /20/
EIP              Electricity Import Price ($ per MW) from Iraq   /210240/
EEP              Electricity Export Price ($ per MW) to Iraq (4 cent per kWh)   /350400/
PVOC             PVs Operating Costs ($ per MW)                  /560000/
CapPV            PVs Capital Cost ($ per MW)                     /1120000/
LHV_Maz          LHV of mazot (MJ per L)                         /40.96136/
MaxEMethane      Maximum Methane Export (m3 per year)            /13227000000/
CapNuclear       Capital Costs of Nuclear Power Plant ($ per MW) /876628120000/
NucOC            Nuclear Power Plants Operating Costs ($ per MW) /765E+4/
MaxCapNuc        Maximum Capacity of Nuclear PP (MW)             /1024/
ENuc             Emissions in Nuclear PP (kg CO2 eq per MW)      /1.05E-01/
Z1opt            Best value for OF1                              /7.57897E+10/
Z2opt            Best value for OF2                              /2.79716E+11/
W1               Weight of optimization for OF1                  /0.5/
W2               Weight of optimization for OF2                  /0.5/
*GHG_Total        Best value for GHG emissions OF                 /279715967513/
*Step             step for GHG emissions (eps-constraint Method)  /1000/

;

*****************************************************************************************************

Parameters
etta1(f) conversion coefficient of oil to different fuels (Liters per barrel Oil)/Petrol 3.70625, Kerosene 6.26625, GasOil 49.80625, Naft_Kure 35.65/
etta2(g) conversion coefficient of gas to different gases (m3 gases per m3 Gas)  /Methane 0.5, Ethane 0.19, Propane 0.16, Buthane 0.20/

GD(t)    Gas demand (m3) /

1395        1508500000
1396        1530658745
1397        1551213369
1398        1570272898
1399        1587942626
1400        1604323485
1401        1619511609
1402        1633598064
1403        1646668704
1404        1658804138
1405        1670079777
1406        1680565948
1407        1690328048
1408        1699426747
1409        1707918200
1410        1715854283
1411        1723282839
1412        1730247918
1413        1736790025
1414        1742946357
1415        1748751037

/

PPE(q)   power plants efficiency /BAGT 0.308, PGGT 0.3666, GENUGT 0.338, BAMaz 0.357/

CapGF(gf)  capacity of gas fields (m3)           /Sarkhun   1.24E+11
                                                  Kish      1.24E+11
                                                  Geshu     1.13267E+11
                                                  Gavarzin  1.13267E+11
                                                  Madar     4.95E+11
                                                  Hengam    4.95E+11/

CapOF(of)  capacity of oil fields (barrel)       /Alvand    356E+21
                                                  Belal     293E+20
                                                  Tosan     5.07E+21
                                                  Resalat   1.99E+20
                                                  Sivand    17E+21
                                                  Nosrat    92E+21/

CapAGF(gf)  Annual capacity of gas fields (m3)                    /Sarkhun  1.24E+11
                                                                   Kish     605900000
                                                                   Geshu    1.13267E+11
                                                                   Gavarzin 76650000
                                                                   Madar    4.95E+11
                                                                   Hengam   2066995000/

CapAOF(of)  Annual capacity of oil fields (barrel)                /Alvand   15695E+7
                                                                   Belal    293000000
                                                                   Tosan    7.89E+9
                                                                   Resalat  5.07E+11
                                                                   Sivand   1700000000
                                                                   Nosrat   9200000000/

RIP(r)      Resource Import Price (Oil : $ per barrel & Gas : $ per cm) from Iraq     /Oil 91.13, Gas 0.05/
REP(r)      Resource Export Price (Oil : $ per barrel & Gas : $ per cm)               /Oil 107.66, Gas 0.12/
RExtP(r)    Resource Extraction Price (Oil : $ per barrel & Gas : $ per cm)           /Oil 10, Gas 0.01/
RPPP(r)     Resource PreProcess Price (Oil : $ per barrel & Gas : $ per cm)           /Oil 0.0001, Gas 0.00001/
FPP(f)      Fuels Production Price ($ per Liter fuels)                                /Petrol 0.070, Kerosene 1.01, GasOil 1.39, Naft_Kure 0.0129/
FIP(f)      Fuels Import Price ($ per Liter fuels)                                    /Petrol 0.094, Kerosene 1.73, GasOil 1.92, Naft_Kure 0.056/
FEP(f)      Fuels Export Price ($ per Liter fuels)                                    /Petrol 0.66, Kerosene 1.32, GasOil 1.89, Naft_Kure 0.053/
GPP(g)      Gases Production Price ($ per cm Gases)                                   /Methane 0.0231, Ethane 0.0635, Propane 0.0241, Buthane 0.0367/
GIP(g)      Gases Import Price ($ per cm Gases)                                       /Methane 0.361, Ethane 0.254, Propane 0.376, Buthane 0.561/
GEP(g)      Gases Export Price ($ per cm Gases)                                       /Methane 0.00201, Ethane 0.00732, Propane 0.00781, Buthane 0.00891/
EPE(q)      Emissions in Electricity Production (kg Co2 eq per MW)                    /BAGT 3.92694E-08, PGGT 3.92694E-08, GENUGT 3.92694E-08, BAMaz 4.13E-02/
RExtE(r)    Resource extraction Emissions (kg Co2 eq per barrel or m3)                /Oil 5.94694E-11, Gas 3.19E-8/
FPE(f)      Fuels Production Emissions in refineries (kg Co2 eq per L fuels)          /Petrol 1.107241, Kerosene 1.78256, GasOil 1.906352, Naft_Kure 1.098172/
GPE(g)      Gas Production Emissions in refineries (kg Co2 eq per m3 Gases)           /Methane 0.331451, Ethane 0.5601124, Propane 0.928102, Buthane 0.907263/
MaxRExport(r) maximum resources export (L for Oil & m3 for Gas)                       /Oil 23121, Gas 425121/
MaxCapPP(q)   maximum capacity of power plants (MW)                                   /BAGT 50, PGGT 990, GENUGT 648, BAMaz 1350/
MaxEF(f)      maximum fuels that we can sold (L)                                      /Petrol 0, Kerosene 51392, GasOil 2408000, Naft_Kure 16900000/

;

*****************************************************************************************************

Table FD(t,f) demand of different fuels in each year (L per year)

            Petrol             Kerosene           GasOil             Naft_Kure
1395        783102             15600000           1432000000         1600000000
1396        815735.7378        15649762.1         806917271.4        4516391503
1397        831159.0768        15777667.97        623606261          3329836036
1398        838572.6577        15875333.52        556503793.6        3557335598
1399        842345.11          15986103.91        530244618          3430278886
1400        844479.6673        16092644.63        520523349.7        3402725165
1401        845881.071         16201896.13        517969265.5        3349101368
1402        846955.2107        16311088.95        518626179.8        3303451216
1403        847883.6381        16421337.82        520748873.3        3256479284
1404        848747.453         16532203.82        523551468.2        3210704551
1405        849582.8619        16643869.55        526676736          3165429073
1406        850406.0247        16756269.01        529961626.4        3120831312
1407        851224.1537        16869435.74        533331611          3076851193
1408        852040.4676        16983363.47        536752635.3        3033493774
1409        852856.4033        17098061.93        540209174.6        2990746533
1410        853672.6021        17213534.49        543694192.9        2948601892
1411        854489.3509        17329787.11        547204544.6        2907051080
1412        855306.7779        17446824.76        550738867.3        2866085806
1413        856124.9408        17564652.87        554296616.6        2825697797
1414        856943.8659        17683276.73        557877623.3        2785878925
1415        857763.5651        17802701.72        561481890.6        2746621169


;

Table CapREF(re,r) capacity of each refinery for types of fuels (L per year)

                 Oil                  Gas
Geshm            560000000000         0
PGS              5760000000000        672000000
Hormozan         116270000000         271363000000
Siahfam          1182938200000        12837212000
Majid            928312400000         0
Lavan            56271800000          0

;

Table ED(t,d) demand of electricity in each sector (MW)

            HouseHold          Agriculture        Industry           Commercial
1395        524.22             96.55              630.26             2.85388
1396        649.7693432        97.45814149        704.2192882        6.07305
1397        656.2670366        98.4327229         711.261481         10.3333
1398        662.829707         99.41705013        718.3740959        10.8881
1399        669.4580041        100.4112206        725.5578368        10.9803
1400        676.1525841        101.4153328        732.8134152        11.6598
1401        682.9141099        102.4294862        740.1415493        11.8780
1402        689.743251         103.453781         747.5429648        12.9538
1403        696.6406836        104.4883188        755.0183945        13.8333
1404        703.6070904        105.533202         762.5685784        14.0662
1405        710.6431613        106.588534         770.1942642        16.7785
1406        717.7495929        107.6544194        777.8962068        18.7629
1407        724.9270888        108.7309636        785.6751689        19.8321
1408        732.1763597        109.8182732        793.5319206        20.1021
1409        739.4981233        110.916456         801.4672398        22.5678
1410        746.8931046        112.0256205        809.4819122        23.9923
1411        754.3620356        113.1458767        817.5767313        24.5263
1412        761.905656         114.2773355        825.7524986        26.8901
1413        769.5247125        115.4201088        834.0100236        27.5562
1414        777.2199596        116.5743099        842.3501239        28.1221
1415        784.9921592        117.740053         850.7736251        29.0123

;

*****************************************************************************************************


Variables
Z1       Economic OF
Z2       GHG emissions OF
Z3       Linear Objective Function

;

*****************************************************************************************************

Binary variables
s1(t,r)  Binary variable for Importing or Exporting of resources
s2(t,f)  Binary variable for Importing or Exporting of fuels
s3(t,g)  Binary variable for Importing or Exporting of gases
s4(t)    Binary variable for Importing or Exporting of Electricity
s5       Binary for Nuclear Power Plant

;

*****************************************************************************************************

Positive variables
TR(t,r)          Total resources (L per year)
AR(t,r)          Available resources (L per year)
RImport(t,r)     Imported resources (L per year)
RExport(t,r)     Exported resources (L per year)
Extract(t,r)     Extracted resources (L per year)
Rresources(t,r)  Ready resources after pre-processing (L per year)
Fuels(t,f)       Produced fuels (L per year)
FImport(t,f)     Imported fuels (L per year)
FExport(t,f)     Exported fuels (L per year)
Total_fuels(t,f) Total available fuels (L per year)
Rfuels(t,f)      Ready fuels to consumer (L per year)
Gases(t,g)       Produced Gases (m3 per year)
GImport(t,g)     Imported Gases (m3 per year)
GExport(t,g)     Exported Gases (m3 per year)
Total_Gases(t,g) Total available gases (m3 per year)
MtPP(t,q)          Methane for Power Plants (m3 per year)
MtC(t)           Methane to consumer (m3 per year)
PE(t,q)          Produced electricity in each power plant (MW)
AvE(t)           Available electricity (MW)
EImport(t)       Imported electricity (MW)
EExport(t)       Exported electricity (MW)
PV(t)            Electricity produced by PV (MW)
Area(t)          Area allocated for PVs (ha)
MaztPP(t)        Mazot to Power Plants (L)
RResidual(t,r)   Residual resources after selling (m3 per year)
FResidual(t,f)   Residual Fuels after selling (m3 per year)
GResidual(t,g)   Residual Gases after selling (m3 per yea)
Nuclear(t)       Produced Elec by Nuclear Power Plant (MW per year)

;

*****************************************************************************************************

Equations
OF1      Economic OF
OF2      GHG emissions OF
OF3      Scalarization of Objective functions

c1       Mass balance for Resources
c2       Binary equation for export of resources
c3       Binary equation for import of resources
c4       calculating the amount of extracted resources
c5       calculating the amount of ready resources after pre-processing
c6       calculating the amount of produced fuels
c7       Mass balance for Produced fuels
c8       Binary equation for Export of fuels
c9       Binary equation for Import of fuels
c10      Considering fuels transportation to consumer efficiency
c11      Satisfying the fuels demand
c12      Calculating the amount of produced Gases
c13      Mass balance for Produced Gases
c14      Binary equation for Gas export
c15      Binaary equation for Gas import
c16      Methane sends to consumers and power plants
c17      Satisfying methane demand of consumers + considering methane transportation coefficient
c18      Calculating produced electricity
c19      Balance for electricity
c20      available mazot
c21      Produced elec in Maz Power Plants
c22      Binary equation for Exporting of electricity
c23      Binary equation for Importing of electricity
c24      Satisfying electricity demand
c25      Scenarios for PV percentage in electricity production
c26      Considering Maximum gas available in fields (total gas in the earth)
c27      considering Maximum oil available in fields (total oil in the earth)
c28      Considering Annual Capacity of Gas fields (in each year How much we can extract gas)
c29      Considering Annual Capacity of Oil fields (in each year How much we can extract oil)
c30      Considering capacity of refineries for fuels
c31      Considering capacity of refineries for gases
c32      Calculating Area allocated to PVs (ha)
c33      Maximum Exported Electricity to Iraq
c34      Maximum Imported Electricity
c35      maximum resources export
c36      Maximum Capacity of Powe Plants
c37      Maxim Fuels that we can sell
c38      Maximum Gas that we can sell
c39      Only Methane considerd as exportable Gas
c40      Methane to MazPP and NucPP is zero !!
c41      binary for Selection of Nuclear Powe Plant

;

**************************************************************************************************

c1(t,r)    ..    TR(t,r)            =E= AR(t,r)+RImport(t,r)-RExport(t,r)-RResidual(t,r);
c2(t,r)    ..    RExport(t,r)       =L= BigM * s1(t,r);
c3(t,r)    ..    RImport(t,r)       =L= BigM * ( 1-s1(t,r) );
c4(t,r)    ..    Extract(t,r)       =E= AR(t,r) * etta_extraction;
c5(t,r)    ..    Rresources(t,r)    =E= Extract(t,r) * etta_preprocess;
c6(t,r,f)  ..    Fuels(t,f)         =E= Rresources(t,'Oil')*(etta_tr1)* etta1(f);
c7(t,f)    ..    Total_fuels(t,f)   =E= Fuels(t,f)+FImport(t,f)-FExport(t,f)-FResidual(t,f);
c8(t,f)    ..    FExport(t,f)       =L= BigM * s2(t,f);
c9(t,f)    ..    FImport(t,f)       =L= BigM * ( 1-s2(t,f) );
c10(t,f)   ..    Rfuels(t,f)        =E= fuels(t,f)*etta_tr2;
c11(t,f)   ..    Rfuels(t,f)        =G= FD(t,f);
c12(t,r,g) ..    Gases(t,g)         =E= Rresources(t,'Gas')*(etta_tr3)*etta2(g);
c13(t,g)   ..    Total_Gases(t,g)   =E= Gases(t,g)+GImport(t,g)-GExport(t,g);
c14(t,g)   ..    GExport(t,g)       =L= BigM * s3(t,g);
c15(t,g)   ..    GImport(t,g)       =L= BigM * ( 1-s3(t,g) );
c16(t,g)   ..    Total_Gases(t,'Methane') =E= SUM(q,MtPP(t,q))+MtC(t);
c17(t)     ..    MtC(t)*etta_trg    =G= GD(t);
c18(t,q)$(ORD(q)<4)                           ..    PE(t,q) =E= ( (MtPP(t,q)*etta_trg)*LHV *MD* PPE(q) )/(365*24*60*60);
c19(t,q)$(ORD(q)=4)                           ..    PE(t,q) =E= ( (MaztPP(t)*etta_trg)*LHV_Maz * PPE(q) )/(365*24*60*60);
c20(t,f)   ..    MaztPP(t)          =E= Total_fuels(t,'Naft_kure')-FExport(t,'Naft_kure');
c21(t)     ..    AvE(t)             =E= SUM(q,PE(t,q))+EImport(t)-EExport(t)+PV(t)+Nuclear(t);
c22(t)     ..    EExport(t)         =L= BigM * s4(t);
c23(t)     ..    EImport(t)         =L= BigM * ( 1-s4(t) );
c24(t)     ..    AvE(t)             =G= SUM(d,ED(t,d))*RM;
c25(t)     ..    PV(t)              =E= PV_Percentage * AvE(t);
c26(r)     ..    SUM(t,Ar(t,'Gas')) =L= SUM(gf,CapGF(gf));
c27(r)     ..    SUM(t,Ar(t,'Oil')) =L= SUM(of,CapOF(of));
c28(t,r)   ..    AR(t,'Gas')        =L= SUM(gf,CapAGF(gf));
c29(t,r)   ..    AR(t,'Oil')        =L= SUM(of,CapAOF(of));
c30(t)     ..    SUM(f,Fuels(t,f))  =L= SUM(re,CapREF(re,'Oil'));
c31(t)     ..    SUM(g,Gases(t,g))  =L= SUM(re,CapREF(re,'Gas'));
c32(t)     ..    Area(t)            =E= PV(t)/EfficiencyPV;
c33(t)     ..    EExport(t)         =L= 804.25;
c34(t)     ..    EImport(t)         =L= 439.72;
c35(t,r)   ..    RExport(t,r)       =L= MaxRExport(r);
c36(t,q)   ..    PE(t,q)            =L= MaxCapPP(q);
c37(t,f)   ..    FExport(t,f)       =L= MaxEF(f);
c38(t,g)   ..    GExport(t,g)       =L= MaxEMethane;
c39(t,g)$(ORD(g)>1) .. GExport(t,g) =E= 0;
c40(t,q)$(ORD(q)=4) .. MtPP(t,q)    =E= 0;
c41(t,q)   ..    Nuclear(t)         =L= MaxCapNuc*s5;

*********************************************************************************************************

*elec production price - elec import price - elec export revenue - resource import price - resource export revenue
*resource extraction price - Resources preprocess price - Fuels production price - Fuels Import Price - Fuels Export revenue
*Gases production price - Gases Import price - Gases Export revenue - capital cost of PVs - Operating Costs of PVs

OF1        ..    Z1                 =E=   (SUM((t,q),((PE(t,q)*EP)/(1+dr)**(ORD(t)-1))))
                                        + (SUM(t,((EImport(t)*EIP)/(1+dr)**(ORD(t)-1))))
                                        - (SUM(t,((EExport(t)*EEP)/(1+dr)**(ORD(t)-1))))
                                        + (SUM((t,r),((RImport(t,r)*RIP(r))/(1+dr)**(ORD(t)-1))))
                                        - (SUM((t,r),((RExport(t,r)*REP(r))/(1+dr)**(ORD(t)-1))))
                                        + (SUM((t,r),((Extract(t,r)*RExtP(r))/(1+dr)**(ORD(t)-1))))
                                        + (SUM((t,r),((Rresources(t,r)*RPPP(r))/(1+dr)**(ORD(t)-1))))
                                        + (SUM((t,f),((Fuels(t,f)*FPP(f))/(1+dr)**(ORD(t)-1))))
                                        + (SUM((t,f),((FImport(t,f)*FIP(f))/(1+dr)**(ORD(t)-1))))
                                        - (SUM((t,f),((FExport(t,f)*FEP(f))/(1+dr)**(ORD(t)-1))))
                                        + (SUM((t,g),((Gases(t,g)*GPP(g))/(1+dr)**(ORD(t)-1))))
                                        + (SUM((t,g),((GImport(t,g)*GIP(g))/(1+dr)**(ORD(t)-1))))
                                        - (SUM((t,g),((GExport(t,g)*GEP(g))/(1+dr)**(ORD(t)-1))))
                                        + ((SUM(t,((PV(t)*PVOC)/(1+dr)**(ORD(t)-1)))))
                                        + (SUM(t,((PV(t)*CapPV))))+(SUM(t,((Nuclear(t)*CapNuclear))))
                                        + ((SUM(t,((Nuclear(t)*NucOC)/(1+dr)**(ORD(t)-1)))));

*emmisions in elec production - emissions in resource extraction - emissions in furls production - emissions in gases production

OF2       ..     Z2                 =E=   (SUM((t,q),((PE(t,q)*EPE(q)))))
                                        + (SUM((t,r),((Extract(t,r)*RExtE(r)))))
                                        + (SUM((t,f),((Fuels(t,f)*FPE(f)))))
                                        + (SUM((t,g),((Gases(t,g)*GPE(g)))))
                                        + (SUM(t,((Nuclear(t)*ENuc))));

OF3       ..     Z3                 =E=   (Z1/Z1opt*W1)+(Z2/Z2opt*W2);


*********************************************************************************************************


Model Energy_Modeling /all/
Option OptCR = 0.00000000001;
Solve Energy_Modeling using MIP minimizing Z3;
Option MIP = CPLEX;
Display Z1.l, Z2.l, PE.l ,MaztPP.l, EImport.l, EExport.l, PV.l, Area.l, Gases.l , GImport.l, GExport.l, MtC.l, MtPP.l, Extract.l, Rresources.l,
        RImport.l, RExport.l, Fuels.l, FImport.l, FExport.l, Nuclear.l;

************************************************************************************************************************
*For Eps-Constraint Method U can clear the commented lines and also $ontext and $offtext commands and Run the code ...
************************************************************************************************************************

$ONTEXT
model Energy_Modeling /all/
loop(y,
Solve Energy_Modeling using MIP minimizing Z1;
option MIP = CPLEX;
display Z1.l, Z2.l;
Emission_Total = Emission_Total + step;
);


equations
c35
c36
;
c35      ..      Z1      =E= 48231581814;
C36      ..      Z2      =E= 8.0131E+12;
model DV /all/
Solve DV using MIP minimizing Z1;
option MIP = CPLEX;
display PE.l, AvE.l, EImport.l, EExport.l, PV.l, MtC.l, Gases.l, Extract.l, Rresources.l,
        RImport.l, RExport.l, AR.l, TR.l, Fuels.l, Total_fuels.l,FImport.l, FExport.l, Gases.l, GImport.l,
        GExport.l, MtPP.l, MtC.l, Area.l, Total_Gases.l, MaztPP.l, RExport.l, RImport.l, RResidual.l;
$OFFTEXT




