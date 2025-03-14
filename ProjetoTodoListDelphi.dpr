program ProjetoTodoListDelphi;

uses
  Vcl.Forms,
  view.todolist in 'views\view.todolist.pas' {ViewTodoList};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TViewTodoList, ViewTodoList);
  Application.Run;
end.
