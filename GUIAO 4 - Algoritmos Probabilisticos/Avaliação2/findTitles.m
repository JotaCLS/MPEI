function [] = findTitles(titulos_sorted,Filtro_Bloom,bloomfilter_size,numero_hf,data)
ids_1 = data(data(:,2) == titulos_sorted(1) & data(:,3) >= 3,1);
ids_2 = data(data(:,2) == titulos_sorted(2) & data(:,3) >= 3,1);
ids_3 = data(data(:,2) == titulos_sorted(3) & data(:,3) >= 3,1);
% vai buscar todos os ids dos users que viram os filmes e
% avaliaram com >= 3
Bloom_Filter = Insert(Filtro_Bloom,ids_1,numero_hf,bloomfilter_size);
count_1 = sum(Bloom_Filter) / numero_hf;
Bloom_Filter = Insert(Bloom_Filter,ids_2,numero_hf,bloomfilter_size);
count_2 = (sum(Bloom_Filter) / numero_hf)-count_1;
Bloom_Filter = Insert(Bloom_Filter,ids_3,numero_hf,bloomfilter_size);
count_3 = (sum(Bloom_Filter) / numero_hf) - count_1 - count_2;
% numero de vezes que cada um dos 3 filmes foi avaliado com >=
% 3
fprintf("O filme %i foi visto e avaliado com >= 3  -> %i vezes \n", titulos_sorted(1), count_1  );
fprintf("O filme %i foi visto e avaliado com >= 3  -> %i vezes \n", titulos_sorted(2), count_2  );
fprintf("O filme %i foi visto e avaliado com >= 3  -> %i vezes \n", titulos_sorted(3), count_3  );
fprintf("--------------------------------------------- \n");
end