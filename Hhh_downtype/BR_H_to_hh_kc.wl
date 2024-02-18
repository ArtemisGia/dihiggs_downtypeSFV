(* ::Package:: *)

(* ::Input::Initialization:: *)
$FeynRulesPath=SetDirectory["~/feynrules-current/"];
<<FeynRules`
SetDirectory["~/feynrules-current/Models/SFV-DOWNTYPE/"];
LoadModel["2HDM.fr"]


(* ::Input::Initialization:: *)
vertices=FeynmanRules[L2HDM];


(* ::Input::Initialization:: *)
decays=ComputeWidths[vertices];


(* ::Input::Initialization:: *)
UpdateParameters[cosbma->0.1,mh1->125, xi->0, ku->0,kt->0];


(* ::Input::Initialization:: *)
ATLASmass={375,400,450,500,550,600};
Flist={{"kc","mH","totwidth","h1h1"}};


(* ::Input::Initialization:: *)
Do[UpdateParameters[mh2 -> m, mh3-> m, mhc->m];
Do[UpdateParameters[kc->i];
BR={};AppendTo[BR,i];
AppendTo[BR,m];AppendTo[BR,Re[NumericalValue[TotWidth[h2]]]];AppendTo[BR,Re[NumericalValue[BranchingRatio[{h2,h1,h1},decays]]]];
AppendTo[Flist,BR],{i,{0.00794328,0.01244515,0.01949845,0.03054921,0.04786301}}],{m,ATLASmass}];


(* ::Input::Initialization:: *)
Export["~/SFV/DownType_csv_PW/Hhh_downtype/atlas_extra_2209_BR_H_to_hh_kc.csv",Flist]
