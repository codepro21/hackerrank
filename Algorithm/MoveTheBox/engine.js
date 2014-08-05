var prevTmp = [];
var movePath = [];
var height = 9;
var width = 7;
var refreshTime = 0;
var count = 0;
function solve(con, step)
{
	var pro17 = [];
	pro17[0] = [' ',' ',' ',' ',' ',' ',' '];
	pro17[1] = [' ',' ',' ',' ',' ',' ',' '];
	pro17[2] = [' ',' ',' ',' ',' ',' ',' '];
	pro17[3] = [' ',' ',' ',' ',' ',' ',' '];
	pro17[4] = [' ',' ','a','b','a',' ',' '];
	pro17[5] = [' ',' ','c','d','c',' ',' '];
	pro17[6] = [' ','a','d','e','b','a',' '];
	pro17[7] = [' ','d','f','c','f','b',' '];
	pro17[8] = ['a','c','c','e','f','e','a'];

	var pro24 = [];
	pro24[0] = [' ',' ',' ',' ',' ',' ',' '];
	pro24[1] = [' ',' ',' ',' ',' ',' ',' '];
	pro24[2] = [' ',' ',' ','a',' ',' ',' '];
	pro24[3] = [' ',' ',' ','d','a',' ',' '];
	pro24[4] = [' ',' ','a','a','d',' ','e'];
	pro24[5] = [' ',' ','d','c','a','a','e'];
	pro24[6] = [' ','a','a','c','b','b','c'];
	pro24[7] = [' ','c','c','b','c','e','e'];
	pro24[8] = ['a','b','b','c','e','e','c'];
	
	var pro48 = [];
	pro48[0] = [' ',' ',' ',' ',' ',' ',' '];
	pro48[1] = [' ',' ',' ','a',' ',' ',' '];
	pro48[2] = [' ',' ','a','b','a',' ',' '];
	pro48[3] = [' ',' ','b','a','a',' ',' '];
	pro48[4] = [' ',' ','a','a','b',' ',' '];
	pro48[5] = [' ','a','a','b','a','a',' '];
	pro48[6] = [' ','a','b','a','a','b',' '];
	pro48[7] = ['b','b','a','a','b','a','a'];
	pro48[8] = ['a','a','b','b','a','a','b'];
	
	var pro49 = [];
	pro49[0] = [' ',' ',' ',' ',' ',' ',' '];
	pro49[1] = [' ',' ',' ',' ',' ',' ',' '];
	pro49[2] = [' ',' ',' ',' ',' ',' ',' '];
	pro49[3] = [' ',' ','c',' ',' ',' ',' '];
	pro49[4] = [' ','b','a',' ',' ',' ',' '];
	pro49[5] = [' ','c','b','c',' ',' ',' '];
	pro49[6] = [' ','b','b','a',' ',' ',' '];
	pro49[7] = [' ','b','c','c',' ',' ',' '];
	pro49[8] = [' ','a','b','a','c','a','a'];
	
	var pro50 = [];
	pro50[0] = [' ',' ',' ',' ',' ',' ',' '];
	pro50[1] = [' ',' ',' ',' ',' ',' ',' '];
	pro50[2] = [' ',' ','a',' ',' ',' ',' '];
	pro50[3] = [' ',' ','a',' ',' ',' ',' '];
	pro50[4] = [' ',' ','b',' ',' ',' ',' '];
	pro50[5] = [' ',' ','c','c',' ',' ',' '];
	pro50[6] = [' ','c','a','a',' ',' ',' '];
	pro50[7] = [' ','a','a','b','c',' ',' '];
	pro50[8] = ['a','b','c','a','a','c',' '];
	
	var pro88 = [];
	pro88[0] = [' ',' ',' ',' ',' ',' ',' '];
	pro88[1] = [' ',' ',' ',' ',' ',' ',' '];
	pro88[2] = [' ',' ',' ',' ',' ',' ',' '];
	pro88[3] = [' ',' ',' ','a','a',' ',' '];
	pro88[4] = [' ',' ','a','c','b',' ',' '];
	pro88[5] = [' ',' ','c','b','a','a',' '];
	pro88[6] = [' ',' ','b','b','c','c',' '];
	pro88[7] = [' ','b','b','a','d','d',' '];
	pro88[8] = [' ','a','a','d','c','c','a'];
	
	var pro89 = [];
	pro89[0] = [' ',' ',' ',' ',' ',' ',' '];
	pro89[1] = [' ',' ',' ',' ',' ',' ',' '];
	pro89[2] = [' ',' ',' ',' ',' ',' ',' '];
	pro89[3] = [' ',' ',' ',' ',' ',' ',' '];
	pro89[4] = [' ',' ',' ',' ',' ',' ',' '];
	pro89[5] = [' ',' ',' ','b','b',' ',' '];
	pro89[6] = [' ',' ',' ','a','a',' ',' '];
	pro89[7] = [' ',' ','b','a','c',' ',' '];
	pro89[8] = [' ','a','a','c','a',' ','c'];
	
	var pro90 = [];
	pro90[0] = [' ',' ',' ',' ',' ',' ',' '];
	pro90[1] = [' ',' ',' ',' ','b',' ',' '];
	pro90[2] = [' ',' ',' ',' ','c',' ',' '];
	pro90[3] = [' ',' ',' ',' ','d',' ',' '];
	pro90[4] = [' ',' ',' ',' ','d',' ',' '];
	pro90[5] = [' ',' ','c',' ','b','b',' '];
	pro90[6] = [' ',' ','b',' ','c','c','b'];
	pro90[7] = [' ','a','a','c','a','b','b'];
	pro90[8] = ['a','b','b','c','d','a','a'];
	
	var pro91 = [];
	pro91[0] = [' ',' ',' ',' ',' ',' ',' '];
	pro91[1] = [' ',' ',' ',' ',' ',' ',' '];
	pro91[2] = [' ',' ',' ',' ',' ',' ',' '];
	pro91[3] = [' ',' ','c',' ',' ',' ',' '];
	pro91[4] = [' ',' ','a',' ',' ',' ',' '];
	pro91[5] = [' ',' ','a',' ',' ',' ',' '];
	pro91[6] = [' ',' ','b','c','c',' ',' '];
	pro91[7] = ['b','a','a','b','a',' ',' '];
	pro91[8] = ['a','c','c','a','c','a','a'];
	
	var pro92 = [];
	pro92[0] = [' ',' ',' ',' ',' ',' ',' '];
	pro92[1] = [' ','a','c',' ',' ',' ',' '];
	pro92[2] = [' ','a','a',' ',' ',' ',' '];
	pro92[3] = [' ','c','c',' ',' ',' ',' '];
	pro92[4] = [' ','d','a','a',' ',' ',' '];
	pro92[5] = [' ','c','b','c',' ',' ',' '];
	pro92[6] = [' ','c','d','c',' ',' ',' '];
	pro92[7] = ['a','d','b','d',' ',' ',' '];
	pro92[8] = ['b','c','d','d','c',' ',' '];
	
	var pro93 = [];
	pro93[0] = [' ',' ',' ',' ',' ',' ',' '];
	pro93[1] = [' ',' ',' ',' ',' ',' ',' '];
	pro93[2] = [' ',' ',' ',' ',' ',' ',' '];
	pro93[3] = [' ',' ',' ',' ',' ',' ',' '];
	pro93[4] = [' ',' ',' ',' ',' ',' ',' '];
	pro93[5] = [' ',' ','a','a',' ',' ',' '];
	pro93[6] = [' ','b','a','b','b',' ',' '];
	pro93[7] = [' ','b','c','b','a',' ',' '];
	pro93[8] = [' ','a','a','c','c','b',' '];
	
	var pro95 = [];
	pro95[0] = [' ',' ',' ',' ',' ',' ',' '];
	pro95[1] = [' ',' ',' ',' ',' ',' ',' '];
	pro95[2] = [' ',' ',' ',' ',' ',' ',' '];
	pro95[3] = [' ',' ',' ',' ','a',' ',' '];
	pro95[4] = [' ',' ','a','a','c',' ',' '];
	pro95[5] = [' ',' ','c','b','a',' ',' '];
	pro95[6] = [' ',' ','b','b','c',' ',' '];
	pro95[7] = [' ',' ','a','a','b',' ',' '];
	pro95[8] = [' ',' ','a','a','b','a','b'];
	
	var pro96 = [];
	pro96[0] = [' ',' ',' ',' ',' ',' ',' '];
	pro96[1] = [' ',' ',' ',' ',' ',' ',' '];
	pro96[2] = [' ',' ',' ',' ',' ',' ',' '];
	pro96[3] = [' ',' ',' ',' ',' ',' ',' '];
	pro96[4] = [' ',' ',' ','b',' ',' ',' '];
	pro96[5] = [' ',' ',' ','c',' ',' ',' '];
	pro96[6] = [' ','c','c','a',' ',' ',' '];
	pro96[7] = [' ','b','a','c','b','b',' '];
	pro96[8] = [' ','a','c','c','b','b',' '];
	
	var os14 = [];
	os14[0] = [' ',' ',' ',' ',' ',' ',' '];
	os14[1] = [' ',' ',' ',' ',' ',' ',' '];
	os14[2] = ['a',' ',' ',' ',' ',' ',' '];
	os14[3] = ['a',' ',' ',' ',' ',' ',' '];
	os14[4] = ['b',' ',' ',' ',' ',' ',' '];
	os14[5] = ['b','a',' ',' ',' ',' ',' '];
	os14[6] = ['a','b',' ',' ',' ',' ',' '];
	os14[7] = ['b','a',' ',' ',' ',' ',' '];
	os14[8] = ['a','b','b',' ',' ',' ',' '];
	
	var os22 = [];
	os22[0] = [' ',' ',' ',' ',' ',' ',' '];
	os22[1] = [' ',' ',' ',' ',' ',' ',' '];
	os22[2] = [' ',' ',' ',' ',' ',' ',' '];
	os22[3] = [' ',' ','b','d','d',' ',' '];
	os22[4] = [' ',' ','a','a','c',' ',' '];
	os22[5] = [' ',' ','b','d','a',' ',' '];
	os22[6] = [' ',' ','c','c','a',' ',' '];
	os22[7] = [' ',' ','b','a','d',' ',' '];
	os22[8] = [' ',' ','a','d','d',' ',' '];
	
	var os23 = [];
	os23[0] = [' ',' ',' ',' ',' ',' ',' '];
	os23[1] = [' ',' ',' ','b',' ',' ',' '];
	os23[2] = [' ',' ',' ','f',' ',' ',' '];
	os23[3] = [' ',' ','b','e','f',' ',' '];
	os23[4] = [' ',' ','c','e','a',' ',' '];
	os23[5] = [' ',' ','c','d','a',' ',' '];
	os23[6] = [' ',' ','d','c','d',' ',' '];
	os23[7] = [' ','b','a','e','c','f',' '];
	os23[8] = [' ','a','c','a','a','c',' '];
	
	var os32 = [];
	os32[0] = [' ',' ',' ',' ',' ',' ',' '];
	os32[1] = [' ',' ',' ',' ',' ',' ',' '];
	os32[2] = [' ',' ',' ','c',' ',' ',' '];
	os32[3] = [' ',' ',' ','b',' ',' ',' '];
	os32[4] = [' ',' ','c','b',' ',' ',' '];
	os32[5] = [' ','c','b','a',' ',' ',' '];
	os32[6] = [' ','b','a','e','e',' ',' '];
	os32[7] = [' ','a','d','a','b','e',' '];
	os32[8] = [' ','a','a','d','d','b',' '];
	
	var os33 = [];
	os33[0] = [' ',' ',' ',' ',' ',' ',' '];
	os33[1] = [' ',' ',' ',' ',' ',' ',' '];
	os33[2] = [' ',' ',' ','b',' ',' ',' '];
	os33[3] = [' ',' ','b','a','b',' ',' '];
	os33[4] = [' ',' ','a','c','a',' ',' '];
	os33[5] = [' ',' ','a','b','b',' ',' '];
	os33[6] = [' ',' ','b','a','a',' ',' '];
	os33[7] = [' ',' ','a','a','c','b',' '];
	os33[8] = [' ',' ','a','b','b','c',' '];
	
	var os45 = [];
	os45[0] = [' ',' ',' ',' ',' ',' ',' '];
	os45[1] = [' ',' ',' ','a',' ',' ',' '];
	os45[2] = [' ',' ',' ','a',' ',' ',' '];
	os45[3] = [' ',' ',' ','c',' ',' ',' '];
	os45[4] = [' ','d',' ','c',' ',' ',' '];
	os45[5] = [' ','c','d','d',' ',' ',' '];
	os45[6] = [' ','a','a','c',' ',' ',' '];
	os45[7] = [' ','b','c','c',' ',' ',' '];
	os45[8] = [' ','a','b','b',' ','a',' '];
	
	var os54 = [];
	os54[0] = [' ',' ',' ',' ',' ',' ',' '];
	os54[1] = [' ',' ',' ',' ',' ',' ',' '];
	os54[2] = [' ',' ',' ',' ',' ',' ',' '];
	os54[3] = [' ',' ',' ','a',' ',' ',' '];
	os54[4] = [' ','a','b','b',' ',' ',' '];
	os54[5] = [' ','b','a','b',' ',' ',' '];
	os54[6] = [' ','a','b','a',' ',' ',' '];
	os54[7] = ['a','b','a','b',' ',' ',' '];
	os54[8] = ['a','b','b','a',' ',' ',' '];
	
	var os78 = [];
	os78[0] = [' ',' ',' ',' ',' ',' ',' '];
	os78[1] = [' ',' ',' ',' ',' ',' ',' '];
	os78[2] = [' ',' ',' ',' ',' ',' ',' '];
	os78[3] = [' ',' ',' ',' ',' ',' ',' '];
	os78[4] = [' ',' ','b',' ',' ',' ',' '];
	os78[5] = [' ','b','c',' ','b',' ',' '];
	os78[6] = [' ','c','a','b','c',' ',' '];
	os78[7] = ['b','a','c','c','d',' ',' '];
	os78[8] = ['a','c','d','d','b',' ',' '];
	
	if(!con) con = os78;
	if(!step) step = 2;
	
	var container = document.getElementById("problem");

	var strResult = "";

	for(var i=0;i<height;i++)
	{
		for(var j=0;j<7;j++)
		{
			strResult += (con[i][j] != ' ' ? con[i][j] : "_");
		}
		strResult += "<br/>";
	}
	container.innerHTML = strResult;
	
	start = new Date();
	
	var result = document.getElementById("result");
	if(move(con, step))
	{
		end = new Date();
		duration = (end.getTime() - start.getTime())/1000;
		
		strResult = "Problem Solved!<br/>";
		
		for(var i=0;i<movePath.length;i++)
		{
			strResult += "from(" + movePath[i][0] + ',' + movePath[i][1] + ') -> to(' + movePath[i][2] + ',' + movePath[i][3] + ');<br/>';
		}
		
		strResult += "Time: " + duration + "(s)";
		strResult += "<br />Time in Refresh function: " + (refreshTime/1000) + "(s)<br />";
		strResult += "<br />Count of move function: " + (count) + "<br />";
		
		result.innerHTML = strResult;
	}
	else
	{
		end = new Date();
		duration = (end.getTime() - start.getTime())/1000;
		strResult = "Time: " + duration + "(s)<br />No Solution!";
		strResult += "<br />Time in Refresh function: " + (refreshTime/1000) + "(s)<br />";
		strResult += "<br />Count of move function: " + (count) + "<br />";
		
		result.innerHTML = strResult;
	}
}

function move(con, step, tmp, curStep, x, y, x1, y1)
{
	count++;
	if(!tmp) tmp = con;
	if(!curStep) curStep = 0;
	
	if(curStep >= step)
		return;
	
	for(var i=0;i<height;i++)
	{
		for(var j=0;j<7;j++)
		{
			if(tmp[i][j] && tmp[i][j] != ' ')
			{
				// left
				if(tmp[i][j-1] && tmp[i][j] != tmp[i][j-1] && tmp[i][j-1] == ' ')
				{
					prevTmp.push(copyArr(tmp));
					movePath.push([i,j,i,j-1]);
					
//					var bw = weight(tmp);
					
					var tv = tmp[i][j];
					tmp[i][j] = tmp[i][j-1];
					tmp[i][j-1] = tv;
					
					displayResult(tmp)
					tmp = refresh(tmp);

					if(tmp == 5)
						return 1;
						
//					var aw = weight(tmp);
//					if(bw >= aw && move(con, step, tmp, curStep+1))
					if(move(con, step, tmp, curStep+1))
						return 1;
					else
					{
						tmp = copyArr(prevTmp.pop());
						movePath.pop();
					}
				}
				
				// right
				if(tmp[i][j+1] && tmp[i][j] != tmp[i][j+1])
				{
					prevTmp.push(copyArr(tmp));
					movePath.push([i,j,i,j+1]);
					
//					var bw = weight(tmp);
					
					var tv = tmp[i][j];
					tmp[i][j] = tmp[i][j+1];
					tmp[i][j+1] = tv;
					
					displayResult(tmp)
					tmp = refresh(tmp);

					if(tmp == 5)
						return 1;
						
//					var aw = weight(tmp);
//					if(bw >= aw && move(con, step, tmp, curStep+1, i, j, i, j+1))
					if(move(con, step, tmp, curStep+1, i, j, i, j+1))
						return 1;
					else
					{
						tmp = copyArr(prevTmp.pop());
						movePath.pop();
					}
				}
				
				// down
				if( tmp[i+1] && tmp[i+1][j] && tmp[i][j] != tmp[i+1][j])
				{
					prevTmp.push(copyArr(tmp));
					movePath.push([i,j,i+1,j]);
					
//					var bw = weight(tmp);
					
					var tv = tmp[i][j];
					tmp[i][j] = tmp[i+1][j];
					tmp[i+1][j] = tv;
					
					displayResult(tmp)
					tmp = refresh(tmp);

					if(tmp == 5)
						return 1;
					
//					var aw = weight(tmp);
//					if(bw >= aw && move(con, step, tmp, curStep+1,i,j,i+1,j))
					if(move(con, step, tmp, curStep+1,i,j,i+1,j))
						return 1;
					else
					{
						tmp = copyArr(prevTmp.pop());
						movePath.pop();
					}
				}
			}
			
		}
	}
	return 0;
}

function refresh(con)
{
	con = drop(con);
	
	var sameMatrix = [];
	for(var i=0;i<height;i++)
		for(var j=0;j<7;j++)
		{
			sameMatrix[i] = [];
			sameMatrix[i][j] = 0;
		}
	
	for(var i=0;i<height;i++)
	{
		var hcount = 0;
		var hloc = [];
		for(var j=0;j<7;j++)
		{
			if(con[i][j] && con[i][j] != ' ')
			{
				if(hcount == 0)
				{
					hloc[0] = i;
					hloc[1] = j;
					hcount ++;
				}
				else
				{
					if(con[i][j] == con[hloc[0]][hloc[1]])
						hcount ++;
					else
					{
						if(hcount > 2)
						{
							for(var t=hloc[1];t<j;t++)
							{
								sameMatrix[i][t] = 1;
							}
						}
						hcount = 1;
						hloc[0] = i;
						hloc[1] = j;
					}
				}
			}
			else
			{
				if(hcount > 2)
				for(var t=hloc[1];t<j;t++)
				{
					sameMatrix[i][t] = 1;
				}
				hcount=0;
			}
		}
		
		if(hcount > 2)
			for(var t=hloc[1];t<j;t++)
			{
				sameMatrix[i][t] = 1;
			}
	}
	
	delete hloc;
	
	for(var i=0;i<7;i++)
	{
		var vcount = 0;
		var vloc = [];
		for(var j=0;j<height;j++)
		{
			if(con[j][i] && con[j][i] != ' ')
			{
				if(vcount == 0)
				{
					vloc[0] = j;
					vloc[1] = i;
					vcount ++;
				}
				else
				{
					if(con[j][i] == con[vloc[0]][vloc[1]])
						vcount ++;
					else
					{
						if(vcount > 2)
						{
							for(var t=vloc[0];t<j;t++)
							{
								sameMatrix[t][i] = 1;
							}
						}
						vcount = 1;
						vloc[0] = j;
						vloc[1] = i;
					}
				}
			}
			else
				vcount=0;
		}
		
		if(vcount > 2)
		{
			for(var t=vloc[0];t<j;t++)
			{
				sameMatrix[t][i] = 1;
			}
		}
	}
	delete vloc;
	
	var isChange = 0;
	var isVal = 0;
	for(var i=0;i<height;i++)
	{
		for(var j=0;j<7;j++)
		{
			if(sameMatrix[i][j] == 1)
			{
				con[i][j] = ' ';
				isChange = 1;
			}
			else if(con[i][j] != ' ')
				isVal = 1;
		}
	}
	
	delete sameMatrix;
	
	if(isChange){
	
		if(!isVal)
			return 5;
		
		 return refresh(con)
	}
	else
		return con;
}

function displayResult(con)
{
	var container = document.getElementById("display");

	var strResult = "";
	
	for(var i=0;i<height;i++)
	{
		for(var j=0;j<7;j++)
		{
			strResult += (con[i][j] != ' ' ? con[i][j] : "_");
		}
		strResult += "<br/>";
	}
	container.innerHTML = strResult;
	
}

function copyArr(arr)
{
	var newArray = [];
	
	for(var i=0;i<height;i++)
	{
		newArray[i] = [];
		for(var j=0;j<7;j++)
		{
			newArray[i][j] = arr[i][j]
		}
	}

	return newArray;
}

function weight(tmp)
{
	var flag = [], w = 1000;
	for(var i=0;i<height;i++)
		for(var j=0;j<7;j++)
		{
			if(tmp[i][j] && tmp[i][j] != ' ' && !flag[tmp[i][j]])
			{
				var xArr = [], yArr = [];
				for(var x=0;x<height;x++)
					for(var y=0;y<7;y++)
					{
						if((x != i || y != j) && tmp[i][j] == tmp[x][y])
						{
							xArr.push(x);
							yArr.push(y);
						}
					}
				
				for(var a=0;a<xArr.length;a++)
				{
					for(var b=0;b<a;b++)
					{
						if(xArr[a] < xArr[b])
						{
							var t = xArr[a];
							xArr[a] = xArr[b];
							xArr[b] = t;
							a = 0;
						}
					}
				}
				
				for(var a=0;a<yArr.length;a++)
				{
					for(var b=0;b<a;b++)
					{
						if(yArr[a] < yArr[b])
						{
							var t = yArr[a];
							yArr[a] = yArr[b];
							yArr[b] = t;
							a = 0;
						}
					}
				}
				var tx = 0;
				for(var a=1;a<xArr.length;a++)
					tx += Math.abs(xArr[a-1] - xArr[a] - 1);
				
				for(var a=1;a<yArr.length;a++)
					tx += Math.abs(yArr[a-1] - yArr[a] - 1);
				
				flag[tmp[i][j]] = tx;
				w += tx;
			}
		}
	return w;
}

function drop(con)
{
	for(var i=0;i<7;i++)
	{
		var f = 0;
		while(!f)
		{
			var isV = 0, f=1;
			for(var x=0;x<height;x++)
			{
				if(con[x][i] != ' ')
					isV = 1;
				else if(isV)
				{
					con[x][i] = con[x-1][i];
					con[x-1][i] = ' ';
					f=0;
					break;
				}
			}
		}
	}
	return con;
}