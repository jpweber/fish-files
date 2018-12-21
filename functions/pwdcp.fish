# copy pwd to pasteboard and strip new line 

function pwdcp 
	pwd | tr -d '\n' | pbcopy	
end
