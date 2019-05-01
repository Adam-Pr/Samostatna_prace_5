function genvect(a, b, c)
    vect=round(rand(1,a)*(0+b));
    save(c, 'vect');
end