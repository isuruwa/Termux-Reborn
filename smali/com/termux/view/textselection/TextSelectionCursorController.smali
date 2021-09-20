.class public Lcom/termux/view/textselection/TextSelectionCursorController;
.super Ljava/lang/Object;
.source "TextSelectionCursorController.java"

# interfaces
.implements Lcom/termux/view/textselection/CursorController;


# instance fields
.field private mActionMode:Landroid/view/ActionMode;

.field private final mEndHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

.field private final mHandleHeight:I

.field private mIsSelectingText:Z

.field private mSelX1:I

.field private mSelX2:I

.field private mSelY1:I

.field private mSelY2:I

.field private mShowStartTime:J

.field private final mStartHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

.field private final terminalView:Lcom/termux/view/TerminalView;


# direct methods
.method public constructor <init>(Lcom/termux/view/TerminalView;)V
    .locals 3

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 24
    iput-boolean v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mIsSelectingText:Z

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mShowStartTime:J

    const/4 v1, -0x1

    .line 28
    iput v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iput v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    .line 36
    iput-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    .line 37
    new-instance v1, Lcom/termux/view/textselection/TextSelectionHandleView;

    invoke-direct {v1, p1, p0, v0}, Lcom/termux/view/textselection/TextSelectionHandleView;-><init>(Lcom/termux/view/TerminalView;Lcom/termux/view/textselection/CursorController;I)V

    iput-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mStartHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    .line 38
    new-instance v0, Lcom/termux/view/textselection/TextSelectionHandleView;

    const/4 v2, 0x2

    invoke-direct {v0, p1, p0, v2}, Lcom/termux/view/textselection/TextSelectionHandleView;-><init>(Lcom/termux/view/TerminalView;Lcom/termux/view/textselection/CursorController;I)V

    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mEndHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    .line 40
    invoke-virtual {v1}, Lcom/termux/view/textselection/TextSelectionHandleView;->getHandleHeight()I

    move-result p1

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionHandleView;->getHandleHeight()I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    iput p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mHandleHeight:I

    return-void
.end method

.method static synthetic access$000(Lcom/termux/view/textselection/TextSelectionCursorController;)Lcom/termux/view/TerminalView;
    .locals 0

    .line 20
    iget-object p0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    return-object p0
.end method

.method static synthetic access$100(Lcom/termux/view/textselection/TextSelectionCursorController;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    return p0
.end method

.method static synthetic access$200(Lcom/termux/view/textselection/TextSelectionCursorController;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    return p0
.end method

.method static synthetic access$300(Lcom/termux/view/textselection/TextSelectionCursorController;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    return p0
.end method

.method static synthetic access$400(Lcom/termux/view/textselection/TextSelectionCursorController;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    return p0
.end method

.method static synthetic access$500(Lcom/termux/view/textselection/TextSelectionCursorController;)I
    .locals 0

    .line 20
    iget p0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mHandleHeight:I

    return p0
.end method

.method private getValidCurX(Lcom/termux/terminal/TerminalBuffer;II)I
    .locals 5

    const/4 v0, 0x0

    .line 299
    invoke-virtual {p1, v0, p2, p3, p2}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object p1

    .line 300
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_4

    .line 302
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    move v1, v0

    :goto_0
    if-ge v0, p2, :cond_4

    .line 303
    invoke-virtual {p1, v0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-nez v2, :cond_0

    goto :goto_2

    .line 309
    :cond_0
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_1

    add-int/lit8 v3, v0, 0x1

    if-ge v3, p2, :cond_1

    .line 310
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 311
    invoke-static {v2, v0}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v0

    invoke-static {v0}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v0

    goto :goto_1

    .line 313
    :cond_1
    invoke-static {v2}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v2

    move v3, v0

    move v0, v2

    :goto_1
    add-int/2addr v0, v1

    if-le p3, v1, :cond_2

    if-ge p3, v0, :cond_2

    return v0

    :cond_2
    if-ne v0, v1, :cond_3

    return v1

    :cond_3
    add-int/lit8 v1, v3, 0x1

    move v4, v1

    move v1, v0

    move v0, v4

    goto :goto_0

    :cond_4
    :goto_2
    return p3
.end method


# virtual methods
.method public decrementYTextSelectionCursors(I)V
    .locals 1

    .line 330
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    .line 331
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    return-void
.end method

.method public getActionMode()Landroid/view/ActionMode;
    .locals 1

    .line 365
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mActionMode:Landroid/view/ActionMode;

    return-object v0
.end method

.method public getSelectors([I)V
    .locals 2

    if-eqz p1, :cond_1

    .line 354
    array-length v0, p1

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 358
    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    aput v1, p1, v0

    const/4 v0, 0x1

    .line 359
    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    aput v1, p1, v0

    const/4 v0, 0x2

    .line 360
    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    aput v1, p1, v0

    const/4 v0, 0x3

    .line 361
    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    aput v1, p1, v0

    :cond_1
    :goto_0
    return-void
.end method

.method public hide()Z
    .locals 6

    .line 56
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionCursorController;->isActive()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 61
    :cond_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mShowStartTime:J

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x12c

    cmp-long v0, v2, v4

    if-gez v0, :cond_1

    return v1

    .line 65
    :cond_1
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mStartHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionHandleView;->hide()V

    .line 66
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mEndHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionHandleView;->hide()V

    .line 68
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_2

    .line 70
    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    :cond_2
    const/4 v0, -0x1

    .line 73
    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    .line 74
    iput-boolean v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mIsSelectingText:Z

    const/4 v0, 0x1

    return v0
.end method

.method public isActive()Z
    .locals 1

    .line 350
    iget-boolean v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mIsSelectingText:Z

    return v0
.end method

.method public onDetached()V
    .locals 0

    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 0

    if-nez p1, :cond_0

    .line 340
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    :cond_0
    return-void
.end method

.method public render()V
    .locals 4

    .line 81
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionCursorController;->isActive()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mStartHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/view/textselection/TextSelectionHandleView;->positionAtCursor(IIZ)V

    .line 84
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mEndHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    add-int/lit8 v1, v1, 0x1

    iget v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    invoke-virtual {v0, v1, v2, v3}, Lcom/termux/view/textselection/TextSelectionHandleView;->positionAtCursor(IIZ)V

    .line 86
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mActionMode:Landroid/view/ActionMode;

    if-eqz v0, :cond_1

    .line 87
    invoke-virtual {v0}, Landroid/view/ActionMode;->invalidate()V

    :cond_1
    return-void
.end method

.method public setActionModeCallBacks()V
    .locals 3

    .line 114
    new-instance v0, Lcom/termux/view/textselection/TextSelectionCursorController$1;

    invoke-direct {v0, p0}, Lcom/termux/view/textselection/TextSelectionCursorController$1;-><init>(Lcom/termux/view/textselection/TextSelectionCursorController;)V

    .line 168
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    new-instance v2, Lcom/termux/view/textselection/TextSelectionCursorController$2;

    invoke-direct {v2, p0, v0}, Lcom/termux/view/textselection/TextSelectionCursorController$2;-><init>(Lcom/termux/view/textselection/TextSelectionCursorController;Landroid/view/ActionMode$Callback;)V

    const/4 v0, 0x1

    invoke-virtual {v1, v2, v0}, Landroid/view/View;->startActionMode(Landroid/view/ActionMode$Callback;I)Landroid/view/ActionMode;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mActionMode:Landroid/view/ActionMode;

    return-void
.end method

.method public setInitialTextSelectionPosition(Landroid/view/MotionEvent;)V
    .locals 4

    .line 92
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    invoke-virtual {v1}, Lcom/termux/view/TerminalRenderer;->getFontWidth()F

    move-result v1

    div-float/2addr v0, v1

    float-to-int v0, v0

    const/16 v1, 0x2002

    .line 93
    invoke-virtual {p1, v1}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/16 v1, -0x28

    .line 96
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    int-to-float v1, v1

    add-float/2addr p1, v1

    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v1, v1, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    invoke-virtual {v1}, Lcom/termux/view/TerminalRenderer;->getFontLineSpacing()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr p1, v1

    float-to-int p1, p1

    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v1}, Lcom/termux/view/TerminalView;->getTopRow()I

    move-result v1

    add-int/2addr p1, v1

    .line 98
    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    .line 99
    iput p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    iput p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    .line 101
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object p1

    .line 102
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    invoke-virtual {p1, v0, v1, v0, v1}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 104
    :goto_1
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    const-string v1, ""

    if-lez v0, :cond_1

    add-int/lit8 v2, v0, -0x1

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {p1, v2, v3, v0, v3}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 105
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    goto :goto_1

    .line 107
    :cond_1
    :goto_2
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v2, v2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_2

    add-int/lit8 v2, v0, 0x1

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p1, v2, v3, v0, v3}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 108
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    goto :goto_2

    :cond_2
    return-void
.end method

.method public show(Landroid/view/MotionEvent;)V
    .locals 3

    .line 45
    invoke-virtual {p0, p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->setInitialTextSelectionPosition(Landroid/view/MotionEvent;)V

    .line 46
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mStartHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    iget v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Lcom/termux/view/textselection/TextSelectionHandleView;->positionAtCursor(IIZ)V

    .line 47
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mEndHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    iget v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    add-int/2addr v0, v2

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    invoke-virtual {p1, v0, v1, v2}, Lcom/termux/view/textselection/TextSelectionHandleView;->positionAtCursor(IIZ)V

    .line 49
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionCursorController;->setActionModeCallBacks()V

    .line 50
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mShowStartTime:J

    .line 51
    iput-boolean v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mIsSelectingText:Z

    return-void
.end method

.method public updatePosition(Lcom/termux/view/textselection/TextSelectionHandleView;II)V
    .locals 5

    .line 210
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v0, v0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v1

    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object v3, v2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v3, v3, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v1, v3

    .line 212
    iget-object v3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mStartHandle:Lcom/termux/view/textselection/TextSelectionHandleView;

    const/4 v4, 0x0

    if-ne p1, v3, :cond_9

    int-to-float p1, p2

    .line 213
    invoke-virtual {v2, p1}, Lcom/termux/view/TerminalView;->getCursorX(F)I

    move-result p1

    iput p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    .line 214
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/termux/view/TerminalView;->getCursorY(F)I

    move-result p1

    iput p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    .line 215
    iget p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    if-gez p2, :cond_0

    .line 216
    iput v4, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    :cond_0
    neg-int p2, v1

    if-ge p1, p2, :cond_1

    .line 220
    iput p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    goto :goto_0

    .line 222
    :cond_1
    iget-object p3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object p3, p3, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p3, p3, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 v1, p3, -0x1

    if-le p1, v1, :cond_2

    add-int/lit8 p3, p3, -0x1

    .line 223
    iput p3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    .line 227
    :cond_2
    :goto_0
    iget p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iget p3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    if-le p1, p3, :cond_3

    .line 228
    iput p3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    .line 230
    :cond_3
    iget p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    if-ne p1, p3, :cond_4

    iget p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    iget p3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    if-le p1, p3, :cond_4

    .line 231
    iput p3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    .line 234
    :cond_4
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result p1

    if-nez p1, :cond_8

    .line 235
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->getTopRow()I

    move-result p1

    .line 237
    iget p3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    if-gt p3, p1, :cond_5

    add-int/lit8 v4, p1, -0x1

    if-ge v4, p2, :cond_7

    move v4, p2

    goto :goto_1

    .line 242
    :cond_5
    iget-object p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p2, p2, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/2addr p2, p1

    if-lt p3, p2, :cond_6

    add-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_6

    goto :goto_1

    :cond_6
    move v4, p1

    .line 249
    :cond_7
    :goto_1
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1, v4}, Lcom/termux/view/TerminalView;->setTopRow(I)V

    .line 252
    :cond_8
    iget p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iget p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    invoke-direct {p0, v0, p1, p2}, Lcom/termux/view/textselection/TextSelectionCursorController;->getValidCurX(Lcom/termux/terminal/TerminalBuffer;II)I

    move-result p1

    iput p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    goto/16 :goto_4

    :cond_9
    int-to-float p1, p2

    .line 255
    invoke-virtual {v2, p1}, Lcom/termux/view/TerminalView;->getCursorX(F)I

    move-result p1

    iput p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    .line 256
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    int-to-float p2, p3

    invoke-virtual {p1, p2}, Lcom/termux/view/TerminalView;->getCursorY(F)I

    move-result p1

    iput p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    .line 257
    iget p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    if-gez p2, :cond_a

    .line 258
    iput v4, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    :cond_a
    neg-int p2, v1

    if-ge p1, p2, :cond_b

    .line 262
    iput p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    goto :goto_2

    .line 263
    :cond_b
    iget-object p3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object p3, p3, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p3, p3, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/lit8 v1, p3, -0x1

    if-le p1, v1, :cond_c

    add-int/lit8 p3, p3, -0x1

    .line 264
    iput p3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    .line 267
    :cond_c
    :goto_2
    iget p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY1:I

    iget p3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    if-le p1, p3, :cond_d

    .line 268
    iput p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    .line 270
    :cond_d
    iget p3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    if-ne p1, p3, :cond_e

    iget p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX1:I

    iget p3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    if-le p1, p3, :cond_e

    .line 271
    iput p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    .line 274
    :cond_e
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object p1, p1, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p1}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result p1

    if-nez p1, :cond_12

    .line 275
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Lcom/termux/view/TerminalView;->getTopRow()I

    move-result p1

    .line 277
    iget p3, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    if-gt p3, p1, :cond_f

    add-int/lit8 v4, p1, -0x1

    if-ge v4, p2, :cond_11

    move v4, p2

    goto :goto_3

    .line 282
    :cond_f
    iget-object p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    iget-object p2, p2, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget p2, p2, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/2addr p2, p1

    if-lt p3, p2, :cond_10

    add-int/lit8 p1, p1, 0x1

    if-lez p1, :cond_10

    goto :goto_3

    :cond_10
    move v4, p1

    .line 289
    :cond_11
    :goto_3
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1, v4}, Lcom/termux/view/TerminalView;->setTopRow(I)V

    .line 292
    :cond_12
    iget p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelY2:I

    iget p2, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    invoke-direct {p0, v0, p1, p2}, Lcom/termux/view/textselection/TextSelectionCursorController;->getValidCurX(Lcom/termux/terminal/TerminalBuffer;II)I

    move-result p1

    iput p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->mSelX2:I

    .line 295
    :goto_4
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionCursorController;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    return-void
.end method
