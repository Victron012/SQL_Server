use dbEstudos;

declare @Tabela table(
	col1 int index idx1 clustered(col1 asc, col2 asc),
	col2 int index idx2 nonclustered (col1, col2)
);