.class Lcom/termux/view/textselection/TextSelectionCursorController$1;
.super Ljava/lang/Object;
.source "TextSelectionCursorController.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/termux/view/textselection/TextSelectionCursorController;->setActionModeCallBacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/termux/view/textselection/TextSelectionCursorController;


# direct methods
.method constructor <init>(Lcom/termux/view/textselection/TextSelectionCursorController;)V
    .locals 0

    .line 114
    iput-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 4

    .line 133
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->isActive()Z

    move-result p1

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    .line 138
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    if-eq p1, v0, :cond_3

    const/4 p2, 0x2

    if-eq p1, p2, :cond_2

    const/4 p2, 0x3

    if-eq p1, p2, :cond_1

    goto/16 :goto_0

    .line 154
    :cond_1
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 155
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->showContextMenu()Z

    goto/16 :goto_0

    .line 145
    :cond_2
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 146
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "clipboard"

    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 147
    invoke-virtual {p1}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object p1

    if-eqz p1, :cond_4

    const/4 p2, 0x0

    .line 149
    invoke-virtual {p1, p2}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object p1

    iget-object p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object p1

    .line 150
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    iget-object p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p2

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    goto :goto_0

    .line 140
    :cond_3
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p1

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget-object p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$100(Lcom/termux/view/textselection/TextSelectionCursorController;)I

    move-result p2

    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$200(Lcom/termux/view/textselection/TextSelectionCursorController;)I

    move-result v1

    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$300(Lcom/termux/view/textselection/TextSelectionCursorController;)I

    move-result v2

    iget-object v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v3}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$400(Lcom/termux/view/textselection/TextSelectionCursorController;)I

    move-result v3

    invoke-virtual {p1, p2, v1, v2, v3}, Lcom/termux/terminal/TerminalEmulator;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    .line 141
    iget-object p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p2

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p2, p1}, Lcom/termux/terminal/TerminalSession;->clipboardText(Ljava/lang/String;)V

    .line 142
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    :cond_4
    :goto_0
    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 5

    .line 119
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$1;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p1

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "clipboard"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/ClipboardManager;

    .line 120
    sget v0, Lcom/termux/view/R$string;->copy_text:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-interface {p2, v1, v2, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    const/4 v3, 0x5

    invoke-interface {v0, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 121
    sget v0, Lcom/termux/view/R$string;->paste_text:I

    const/4 v4, 0x2

    invoke-interface {p2, v1, v4, v1, v0}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/ClipboardManager;->hasPrimaryClip()Z

    move-result p1

    invoke-interface {v0, p1}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object p1

    invoke-interface {p1, v3}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 122
    sget p1, Lcom/termux/view/R$string;->text_selection_more:I

    const/4 v0, 0x3

    invoke-interface {p2, v1, v0, v1, p1}, Landroid/view/Menu;->add(IIII)Landroid/view/MenuItem;

    return v2
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
