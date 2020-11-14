

function getTheTopper()
if bool1== true then
	j=1
	names = {}
	local N = tonumber(x)
	local temp1 = tonumber(scorelist[1][2])
	for i=2,N do
		temp2=tonumber(scorelist[i][2])
		if temp1 > temp2 then
		else
			temp1=temp2
		end
		
	end
	for i=1,N do
		if tonumber(scorelist[i][2]) == temp1 then
			names[j] = scorelist[i][1]
			j=j+1
		end
	end
	print("name of the student who scored highest are")
		for i=1,#names do
			io.write(names[i]," ")
		end

end
end


function readScoreList()
local N = tonumber(x)

  for i=1,N do
  if (N < 2) or (N > 100) then
	io.write("Invalid entry\n")
	bool1=false
        break
  end
  scorelist[i]={}
  
    io.write("Enter the name : ")
    scorelist[i][1]= io.read()
    io.write("Enter the score : ")
    scorelist[i][2]= io.read()
    temp3 = tonumber(scorelist[i][2])
    if (temp3 < 0) or (temp3 > 100) then
	io.write("Invalid marks entry\n")
	bool1=false
        break
    end
end
return scorelist
end


function Main1()
io.write("Enter the number of test taken : ")
temp1 = io.read()
local z = tonumber(temp1)
if (z > 0) and (z <= 25) then
	for i=1,z do
		bool1=true
		scorelist = {}
		io.write("Enter the number of students attended the test :")
		x = io.read()
		readScoreList()
		getTheTopper()
		print("")  
	end
else
print("Invalid test number")
end
end

Main1()