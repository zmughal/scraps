for i = dir('t/*.m')
	i_Filename = i.name;
	[i_Path, i_Name, i_Ext] = fileparts(i_Filename);
	disp(i_Name);
	eval(i_Name)
end
