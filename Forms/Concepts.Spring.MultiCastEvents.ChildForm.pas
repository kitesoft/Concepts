{
  Copyright (C) 2013-2015 Tim Sinaeve tim.sinaeve@gmail.com

  Licensed under the Apache License, Version 2.0 (the "License");
  you may not use this file except in compliance with the License.
  You may obtain a copy of the License at

      http://www.apache.org/licenses/LICENSE-2.0

  Unless required by applicable law or agreed to in writing, software
  distributed under the License is distributed on an "AS IS" BASIS,
  WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
  See the License for the specific language governing permissions and
  limitations under the License.
}

{$I Concepts.inc}

unit Concepts.Spring.MultiCastEvents.ChildForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.Actions, Vcl.ActnList,
  Vcl.StdCtrls, Vcl.Buttons, Vcl.ComCtrls, Vcl.ExtCtrls,

  Concepts.Spring.MultiCastEvents.Data;

type
  TfrmMulticastEventsChild = class(TForm)
    aclMain       : TActionList;
    actTest       : TAction;
    trbImageIndex : TTrackBar;
    procedure trbImageIndexChange(Sender: TObject);

  private
    FPosition : TPosition;

    procedure FPositionOnChange(Sender: TObject);

  public
    constructor Create(
       AOwner    : TComponent;
       APosition : TPosition
    ); reintroduce; virtual;
  end;


implementation

{$R *.dfm}

uses
  Concepts.Resources;


constructor TfrmMulticastEventsChild.Create(AOwner: TComponent;
  APosition: TPosition);
begin
  inherited Create(AOwner);
  trbImageIndex.Max := aclMain.Images.Count;
  FPosition := APosition;
  FPosition.OnChange.Add(FPositionOnChange);
end;

procedure TfrmMulticastEventsChild.FPositionOnChange(Sender: TObject);
begin
  trbImageIndex.Position := FPosition.Position;
  aclMain.Images.GetIcon(FPosition.Position, Icon);
end;

procedure TfrmMulticastEventsChild.trbImageIndexChange(Sender: TObject);
begin
  FPosition.Position := trbImageIndex.Position;
end;

end.