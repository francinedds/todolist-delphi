unit view.todolist;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons,
  System.ImageList, Vcl.ImgList, Vcl.Menus;

type
  TViewTodoList = class(TForm)
    pnlHeader: TPanel;
    pnlFunctions: TPanel;
    EditTask: TEdit;
    pnlFooter: TPanel;
    lblTitle: TLabel;
    detailLine: TShape;
    btnClose: TSpeedButton;
    buttonRemove: TSpeedButton;
    buttonAdd: TSpeedButton;
    ListBoxTasks: TListBox;
    PopupMenu: TPopupMenu;
    Deletar: TMenuItem;
    procedure btnCloseClick(Sender: TObject);
    procedure buttonAddClick(Sender: TObject);
    procedure buttonRemoveClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DeletarClick(Sender: TObject);
    procedure EditTaskKeyPress(Sender: TObject; var Key: Char);
  private
    var
     DarkModeEnabled: Boolean;
  public
    { Public declarations }
  end;

var
  ViewTodoList: TViewTodoList;

implementation

{$R *.dfm}

procedure TViewTodoList.btnCloseClick(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TViewTodoList.buttonAddClick(Sender: TObject);
begin
    // verifica se o campo de texto não está vazio
  if Trim(EditTask.Text) <> '' then
  begin
    ListBoxTasks.Items.Add(EditTask.Text);

    EditTask.Clear;
  end
  else
  begin
    ShowMessage('Por favor, insira uma tarefa!');
  end;
end;

procedure TViewTodoList.buttonRemoveClick(Sender: TObject);
begin
      // se houver tarefa selecionada
  if ListBoxTasks.ItemIndex >= 0 then
  begin
    // remove
    ListBoxTasks.Items.Delete(ListBoxTasks.ItemIndex);
  end
  else
  begin
    ShowMessage('Por favor, selecione uma tarefa para remover!');
  end;
end;

procedure TViewTodoList.DeletarClick(Sender: TObject);
begin
  ListBoxTasks.Items.Delete(ListBoxTasks.ItemIndex);
end;

procedure TViewTodoList.EditTaskKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
  begin
    ListBoxTasks.Items.Add(EditTask.Text);

    EditTask.Clear;

    // evita que o caractere de enter seja processado pelo edit
    Key := #0;
  end;
end;

procedure TViewTodoList.FormShow(Sender: TObject);
begin
  btnClose.Hint := 'Fechar';
  btnClose.ShowHint := True;
end;

end.

