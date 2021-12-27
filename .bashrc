template(){
cat<<EOF
/**
 *   author: Vinzz34
EOF
echo " *   Created: $(date +%d).$(date +%m).$(date +%Y) $(date +%I):$(date +%M):$(date +%S)"
cat<<EOC
**/
#include<bits/stdc++.h>

using namespace std;

#define ll long long
#define ar array
#define ld long double
#define vi vector<int>
#define vpii vector<pair<int,int>>
#define PB push_back
#define MP make_pair
#define fi first
#define se second
#define sz(a) int((a).size())
#define FOR(a,b,c) for(int a=b;a<(int)(c);a++)
#define MOD 1000000007
#define EACH(v) for(auto x : v)
#define VINZZ

int main(){
	ios::sync_with_stdio(false);
	cin.tie(0);
	return 0;
}
EOC
}
create(){
	a=($@)
	for i in "${a[@]}"
	do
		template > $i.cpp
		echo creating $i.cpp ...
		nvim $i.cpp
	done
}
open(){
	a=($@)
	for i in "${a[@]}"
	do
		echo opening $i.cpp ...
		nvim $i.cpp
	done
}
del(){
	a=($@)
	for i in "${a[@]}"
	do
		echo deleting $i.cpp ...
		if test -f "$i.cpp"; then
		  rm $i.cpp
		fi
		if test -f "$i"; then
		  rm $i
		fi
	done
}
run(){
	echo [DEBUG MODE] compiling $1.cpp with c++17.
	g++ -std=c++17 -O2 -Wall -Wno-unused-variable $1.cpp -o $1
	echo Input:
	./$1
}

rng(){
	echo Genarating ...
	echo $1
	for (( i=1; i<=$1; i++ ))
	do
		printf "$((1 + $RANDOM % 10)) "
	done
	printf "\n"
}

mkcdir(){
	echo making directory $1 ....
	mkdir $1
	cd $1
}

cfsamplegen(){
	python3 /home/vinzz/github/CFSampleGenerator/main.py $1
}

runsamples(){
	echo [DEBUG MODE] compiling $1.cpp with c++17.
	echo Output:
	g++ -std=c++17 -O2 -Wall -Wno-unused-variable $1.cpp -o $1
	./$1 < $1.in > $1-1.out
	cat $1-1.out
	echo Expected:
	cat $1.out
	echo ------------
	GREEN='\033[1;32m'
	RED='\033[0;31m'
	if cmp -s "$1-1.out" "$1.out"; then
	    printf "${GREEN}Passed!\n"
	else
	    printf "${RED}Failed!\n"
	fi
}

alias spicetify=/home/vinzz/spicetify-cli/spicetify
eval "$(starship init bash)"
colorscript random
alias v='nvim'
alias fetch='fm6000 -c cyan -f astronaut.txt'
