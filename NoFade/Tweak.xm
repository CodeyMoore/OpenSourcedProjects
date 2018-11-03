%hook SPTNowPlayingDurationView //this is the class

-(bool)setAlwaysShowDurationLabel { //this is the method
return TRUE; //this is the return value
}
-(bool)shouldAlwaysShowDurationLabels {
return TRUE;
}
%end
