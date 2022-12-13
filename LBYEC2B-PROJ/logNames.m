function logNames
% Create figure and components

fig = uifigure("Position",[100 100 366 400]);

loglist = uitextarea(fig,...
    "Position",[134 49 150 277],...    
    "Editable","off");


end

% Create ValueChangedFcn callback
function nValChanged(namefld,event,loglist)
newvalue = event.Value;
previousValue = event.PreviousValue;

loglist.Value = [previousValue; loglist.Value];

end