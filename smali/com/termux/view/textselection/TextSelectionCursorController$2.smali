.class Lcom/termux/view/textselection/TextSelectionCursorController$2;
.super Landroid/view/ActionMode$Callback2;
.source "TextSelectionCursorController.java"


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

.field final synthetic val$callback:Landroid/view/ActionMode$Callback;


# direct methods
.method constructor <init>(Lcom/termux/view/textselection/TextSelectionCursorController;Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 168
    iput-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    iput-object p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-direct {p0}, Landroid/view/ActionMode$Callback2;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 1

    .line 181
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    .line 171
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->val$callback:Landroid/view/ActionMode$Callback;

    invoke-interface {v0, p1, p2}, Landroid/view/ActionMode$Callback;->onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onGetContentRect(Landroid/view/ActionMode;Landroid/view/View;Landroid/graphics/Rect;)V
    .locals 4

    .line 191
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$100(Lcom/termux/view/textselection/TextSelectionCursorController;)I

    move-result p1

    int-to-float p1, p1

    iget-object p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object p2

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    invoke-virtual {p2}, Lcom/termux/view/TerminalRenderer;->getFontWidth()F

    move-result p2

    mul-float/2addr p1, p2

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    .line 192
    iget-object p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {p2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$300(Lcom/termux/view/textselection/TextSelectionCursorController;)I

    move-result p2

    int-to-float p2, p2

    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v0

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    invoke-virtual {v0}, Lcom/termux/view/TerminalRenderer;->getFontWidth()F

    move-result v0

    mul-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    .line 193
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$200(Lcom/termux/view/textselection/TextSelectionCursorController;)I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v1

    invoke-virtual {v1}, Lcom/termux/view/TerminalView;->getTopRow()I

    move-result v1

    sub-int/2addr v0, v1

    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v1

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    invoke-virtual {v1}, Lcom/termux/view/TerminalRenderer;->getFontLineSpacing()I

    move-result v1

    mul-int/2addr v0, v1

    int-to-float v0, v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    .line 194
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v1}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$400(Lcom/termux/view/textselection/TextSelectionCursorController;)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v2

    invoke-virtual {v2}, Lcom/termux/view/TerminalView;->getTopRow()I

    move-result v2

    sub-int/2addr v1, v2

    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;

    move-result-object v2

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    invoke-virtual {v2}, Lcom/termux/view/TerminalRenderer;->getFontLineSpacing()I

    move-result v2

    mul-int/2addr v1, v2

    int-to-float v1, v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-le p1, p2, :cond_0

    move v3, p2

    move p2, p1

    move p1, v3

    .line 203
    :cond_0
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$500(Lcom/termux/view/textselection/TextSelectionCursorController;)I

    move-result v2

    add-int/2addr v0, v2

    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController$2;->this$0:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-static {v2}, Lcom/termux/view/textselection/TextSelectionCursorController;->access$500(Lcom/termux/view/textselection/TextSelectionCursorController;)I

    move-result v2

    add-int/2addr v1, v2

    invoke-virtual {p3, p1, v0, p2, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
