function myCallback(u, ~)
%%
data = readline(u);

%%
evalin("base", "received_data = struct;");

str_text = strsplit(data, ',');
for i = 1:numel(str_text)
    eval_text = "received_data.L" + num2str(i) + " = " + str_text{i} + ";";
    evalin("base", eval_text);
end

end