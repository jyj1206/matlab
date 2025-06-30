function h = gcdiv(a, b)
	% 음수의 경우 절대값 처리
	if a < 0
		a = -a;
	end
	if b < 0
		b = -b;
	end
	
	while b > 0
		r = rem(a, b);
		a = b; b = r;
	end
	h = a;
end
