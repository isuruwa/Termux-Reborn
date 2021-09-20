.class public final Lcom/termux/view/TerminalView;
.super Landroid/view/View;
.source "TerminalView.java"


# static fields
.field private static TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z = false


# instance fields
.field private final mAccessibilityEnabled:Z

.field public mClient:Lcom/termux/view/TerminalViewClient;

.field mCombiningAccent:I

.field mDefaultSelectors:[I

.field public mEmulator:Lcom/termux/terminal/TerminalEmulator;

.field final mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

.field private mMouseScrollStartX:I

.field private mMouseScrollStartY:I

.field private mMouseStartDownTime:J

.field public mRenderer:Lcom/termux/view/TerminalRenderer;

.field mScaleFactor:F

.field mScrollRemainder:F

.field final mScroller:Landroid/widget/Scroller;

.field private final mShowFloatingToolbar:Ljava/lang/Runnable;

.field public mTermSession:Lcom/termux/terminal/TerminalSession;

.field private mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

.field mTopRow:I


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .line 80
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x4

    new-array p2, p2, [I

    .line 57
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/termux/view/TerminalView;->mDefaultSelectors:[I

    const/high16 p2, 0x3f800000    # 1.0f

    .line 59
    iput p2, p0, Lcom/termux/view/TerminalView;->mScaleFactor:F

    const/4 p2, -0x1

    .line 63
    iput p2, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    iput p2, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    const-wide/16 v0, -0x1

    .line 65
    iput-wide v0, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    .line 927
    new-instance p2, Lcom/termux/view/TerminalView$3;

    invoke-direct {p2, p0}, Lcom/termux/view/TerminalView$3;-><init>(Lcom/termux/view/TerminalView;)V

    iput-object p2, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    .line 81
    new-instance p2, Lcom/termux/view/GestureAndScaleRecognizer;

    new-instance v0, Lcom/termux/view/TerminalView$1;

    invoke-direct {v0, p0}, Lcom/termux/view/TerminalView$1;-><init>(Lcom/termux/view/TerminalView;)V

    invoke-direct {p2, p1, v0}, Lcom/termux/view/GestureAndScaleRecognizer;-><init>(Landroid/content/Context;Lcom/termux/view/GestureAndScaleRecognizer$Listener;)V

    iput-object p2, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    .line 207
    new-instance p2, Landroid/widget/Scroller;

    invoke-direct {p2, p1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/termux/view/TerminalView;->mScroller:Landroid/widget/Scroller;

    const-string p2, "accessibility"

    .line 208
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/accessibility/AccessibilityManager;

    .line 209
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result p1

    iput-boolean p1, p0, Lcom/termux/view/TerminalView;->mAccessibilityEnabled:Z

    return-void

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method static synthetic access$000()Z
    .locals 1

    .line 39
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    return v0
.end method

.method static synthetic access$100(Lcom/termux/view/TerminalView;)Landroid/view/ActionMode;
    .locals 0

    .line 39
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object p0

    return-object p0
.end method

.method private decrementYTextSelectionCursors(I)V
    .locals 1

    .line 893
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 894
    invoke-virtual {v0, p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->decrementYTextSelectionCursors(I)V

    :cond_0
    return-void
.end method

.method private getText()Ljava/lang/CharSequence;
    .locals 5

    .line 770
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v3, v2, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    add-int/2addr v2, v1

    const/4 v4, 0x0

    invoke-virtual {v0, v4, v1, v3, v2}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIII)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getTextSelectionActionMode()Landroid/view/ActionMode;
    .locals 1

    .line 867
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 868
    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getActionMode()Landroid/view/ActionMode;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method private hideTextSelectionCursors()Z
    .locals 1

    .line 850
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getTextSelectionCursorController()Lcom/termux/view/textselection/TextSelectionCursorController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->hide()Z

    move-result v0

    return v0
.end method

.method private renderTextSelection()V
    .locals 1

    .line 854
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 855
    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->render()V

    :cond_0
    return-void
.end method

.method private showFloatingToolbar()V
    .locals 4

    .line 937
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 938
    invoke-static {}, Landroid/view/ViewConfiguration;->getDoubleTapTimeout()I

    move-result v0

    .line 939
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    int-to-long v2, v0

    invoke-virtual {p0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method private showTextSelectionCursors(Landroid/view/MotionEvent;)V
    .locals 1

    .line 846
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->getTextSelectionCursorController()Lcom/termux/view/textselection/TextSelectionCursorController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/termux/view/textselection/TextSelectionCursorController;->show(Landroid/view/MotionEvent;)V

    return-void
.end method


# virtual methods
.method public attachSession(Lcom/termux/terminal/TerminalSession;)Z
    .locals 2

    .line 235
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 236
    :cond_0
    iput v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 238
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    const/4 p1, 0x0

    .line 239
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    .line 240
    iput v1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 242
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    const/4 p1, 0x1

    .line 245
    invoke-virtual {p0, p1}, Landroid/view/View;->setVerticalScrollBarEnabled(Z)V

    return p1
.end method

.method public autofill(Landroid/view/autofill/AutofillValue;)V
    .locals 1

    .line 809
    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->isText()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 810
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p1}, Landroid/view/autofill/AutofillValue;->getTextValue()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method protected computeVerticalScrollExtent()I
    .locals 1

    .line 372
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollOffset()I
    .locals 2

    .line 377
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v0

    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    add-int/2addr v0, v1

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v1, v1, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    sub-int/2addr v0, v1

    :goto_0
    return v0
.end method

.method protected computeVerticalScrollRange()I
    .locals 1

    .line 367
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveRows()I

    move-result v0

    :goto_0
    return v0
.end method

.method doScroll(Landroid/view/MotionEvent;I)V
    .locals 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-gez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    .line 464
    :goto_0
    invoke-static {p2}, Ljava/lang/Math;->abs(I)I

    move-result p2

    move v3, v1

    :goto_1
    if-ge v3, p2, :cond_7

    .line 466
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v4

    if-eqz v4, :cond_2

    if-eqz v2, :cond_1

    const/16 v4, 0x40

    goto :goto_2

    :cond_1
    const/16 v4, 0x41

    .line 467
    :goto_2
    invoke-virtual {p0, p1, v4, v0}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_5

    .line 468
    :cond_2
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalEmulator;->isAlternateBufferActive()Z

    move-result v4

    if-eqz v4, :cond_4

    if-eqz v2, :cond_3

    const/16 v4, 0x13

    goto :goto_3

    :cond_3
    const/16 v4, 0x14

    .line 471
    :goto_3
    invoke-virtual {p0, v4, v1}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    goto :goto_5

    .line 473
    :cond_4
    iget-object v4, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v4

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v4

    neg-int v4, v4

    iget v5, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    if-eqz v2, :cond_5

    const/4 v6, -0x1

    goto :goto_4

    :cond_5
    move v6, v0

    :goto_4
    add-int/2addr v5, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    invoke-static {v1, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    iput v4, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 474
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    move-result v4

    if-nez v4, :cond_6

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_6
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_7
    return-void
.end method

.method public getAutofillType()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAutofillValue()Landroid/view/autofill/AutofillValue;
    .locals 1

    const-string v0, ""

    .line 823
    invoke-static {v0}, Landroid/view/autofill/AutofillValue;->forText(Ljava/lang/CharSequence;)Landroid/view/autofill/AutofillValue;

    move-result-object v0

    return-object v0
.end method

.method public getCurrentSession()Lcom/termux/terminal/TerminalSession;
    .locals 1

    .line 766
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    return-object v0
.end method

.method public getCursorX(F)I
    .locals 1

    .line 774
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getCursorY(F)I
    .locals 1

    const/high16 v0, 0x42200000    # 40.0f

    sub-float/2addr p1, v0

    .line 778
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    int-to-float v0, v0

    add-float/2addr p1, v0

    float-to-int p1, p1

    return p1
.end method

.method public getPointX(I)I
    .locals 1

    .line 782
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v0, v0, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-le p1, v0, :cond_0

    move p1, v0

    :cond_0
    int-to-float p1, p1

    .line 785
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    mul-float/2addr p1, v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public getPointY(I)I
    .locals 1

    .line 789
    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    sub-int/2addr p1, v0

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v0, v0, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    mul-int/2addr p1, v0

    int-to-float p1, p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method getTextSelectionCursorController()Lcom/termux/view/textselection/TextSelectionCursorController;
    .locals 2

    .line 833
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-nez v0, :cond_0

    .line 834
    new-instance v0, Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-direct {v0, p0}, Lcom/termux/view/textselection/TextSelectionCursorController;-><init>(Lcom/termux/view/TerminalView;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    .line 836
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 838
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 842
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    return-object v0
.end method

.method public getTopRow()I
    .locals 1

    .line 793
    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    return v0
.end method

.method public handleKeyCode(II)Z
    .locals 2

    .line 688
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    .line 689
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isCursorKeysApplicationMode()Z

    move-result v1

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isKeypadApplicationMode()Z

    move-result v0

    invoke-static {p1, p2, v1, v0}, Lcom/termux/terminal/KeyHandler;->getCode(IIZZ)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 691
    :cond_0
    iget-object p2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p2, p1}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method

.method hideFloatingToolbar()V
    .locals 3

    .line 944
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 945
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mShowFloatingToolbar:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 946
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    const-wide/16 v1, -0x1

    invoke-virtual {v0, v1, v2}, Landroid/view/ActionMode;->hide(J)V

    :cond_0
    return-void
.end method

.method public inputCodePoint(IZZ)V
    .locals 4

    .line 629
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 630
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "inputCodePoint(codePoint="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", controlDownFromEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ", leftAltDownFromEvent="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 634
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-nez v0, :cond_1

    return-void

    :cond_1
    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_3

    .line 636
    iget-object p2, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {p2}, Lcom/termux/view/TerminalViewClient;->readControlKey()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_0

    :cond_2
    move p2, v0

    goto :goto_1

    :cond_3
    :goto_0
    move p2, v1

    :goto_1
    if-nez p3, :cond_5

    .line 637
    iget-object p3, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {p3}, Lcom/termux/view/TerminalViewClient;->readAltKey()Z

    move-result p3

    if-eqz p3, :cond_4

    goto :goto_2

    :cond_4
    move p3, v0

    goto :goto_3

    :cond_5
    :goto_2
    move p3, v1

    .line 639
    :goto_3
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v2, p1, p2, v3}, Lcom/termux/view/TerminalViewClient;->onCodePoint(IZLcom/termux/terminal/TerminalSession;)Z

    move-result v2

    if-eqz v2, :cond_6

    return-void

    :cond_6
    const/16 v2, 0x5e

    if-eqz p2, :cond_15

    const/16 p2, 0x61

    if-lt p1, p2, :cond_7

    const/16 p2, 0x7a

    if-gt p1, p2, :cond_7

    add-int/lit8 p1, p1, -0x61

    :goto_4
    add-int/2addr p1, v1

    goto/16 :goto_b

    :cond_7
    const/16 p2, 0x41

    if-lt p1, p2, :cond_8

    const/16 p2, 0x5a

    if-gt p1, p2, :cond_8

    add-int/lit8 p1, p1, -0x41

    goto :goto_4

    :cond_8
    const/16 p2, 0x20

    if-eq p1, p2, :cond_14

    const/16 p2, 0x32

    if-ne p1, p2, :cond_9

    goto :goto_a

    :cond_9
    const/16 p2, 0x5b

    if-eq p1, p2, :cond_13

    const/16 p2, 0x33

    if-ne p1, p2, :cond_a

    goto :goto_9

    :cond_a
    const/16 p2, 0x5c

    if-eq p1, p2, :cond_12

    const/16 p2, 0x34

    if-ne p1, p2, :cond_b

    goto :goto_8

    :cond_b
    const/16 p2, 0x5d

    if-eq p1, p2, :cond_11

    const/16 p2, 0x35

    if-ne p1, p2, :cond_c

    goto :goto_7

    :cond_c
    if-eq p1, v2, :cond_10

    const/16 p2, 0x36

    if-ne p1, p2, :cond_d

    goto :goto_6

    :cond_d
    const/16 p2, 0x5f

    if-eq p1, p2, :cond_f

    const/16 p2, 0x37

    if-eq p1, p2, :cond_f

    const/16 p2, 0x2f

    if-ne p1, p2, :cond_e

    goto :goto_5

    :cond_e
    const/16 p2, 0x38

    if-ne p1, p2, :cond_15

    const/16 p1, 0x7f

    goto :goto_b

    :cond_f
    :goto_5
    const/16 p1, 0x1f

    goto :goto_b

    :cond_10
    :goto_6
    const/16 p1, 0x1e

    goto :goto_b

    :cond_11
    :goto_7
    const/16 p1, 0x1d

    goto :goto_b

    :cond_12
    :goto_8
    const/16 p1, 0x1c

    goto :goto_b

    :cond_13
    :goto_9
    const/16 p1, 0x1b

    goto :goto_b

    :cond_14
    :goto_a
    move p1, v0

    :cond_15
    :goto_b
    const/4 p2, -0x1

    if-le p1, p2, :cond_19

    const/16 p2, 0x2c6

    if-eq p1, p2, :cond_18

    const/16 p2, 0x2cb

    if-eq p1, p2, :cond_17

    const/16 p2, 0x2dc

    if-eq p1, p2, :cond_16

    move v2, p1

    goto :goto_c

    :cond_16
    const/16 v2, 0x7e

    goto :goto_c

    :cond_17
    const/16 v2, 0x60

    .line 682
    :cond_18
    :goto_c
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p1, p3, v2}, Lcom/termux/terminal/TerminalSession;->writeCodePoint(ZI)V

    :cond_19
    return-void
.end method

.method public isOpaque()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public isSelectingText()Z
    .locals 1

    .line 859
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 860
    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->isActive()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method protected onAttachedToWindow()V
    .locals 2

    .line 900
    invoke-super {p0}, Landroid/view/View;->onAttachedToWindow()V

    .line 902
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 903
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    :cond_0
    return-void
.end method

.method public onCheckIsTextEditor()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onCreateInputConnection(Landroid/view/inputmethod/EditorInfo;)Landroid/view/inputmethod/InputConnection;
    .locals 1

    .line 252
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldEnforceCharBasedInput()Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x80090

    .line 256
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 265
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->inputType:I

    :goto_0
    const/high16 v0, 0x2000000

    .line 270
    iput v0, p1, Landroid/view/inputmethod/EditorInfo;->imeOptions:I

    .line 272
    new-instance p1, Lcom/termux/view/TerminalView$2;

    const/4 v0, 0x1

    invoke-direct {p1, p0, p0, v0}, Lcom/termux/view/TerminalView$2;-><init>(Lcom/termux/view/TerminalView;Landroid/view/View;Z)V

    return-object p1
.end method

.method protected onDetachedFromWindow()V
    .locals 2

    .line 909
    invoke-super {p0}, Landroid/view/View;->onDetachedFromWindow()V

    .line 911
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v0, :cond_0

    .line 914
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 916
    invoke-virtual {p0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 917
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    invoke-virtual {v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->onDetached()V

    :cond_0
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 750
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    const/high16 v0, -0x1000000

    .line 751
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->drawColor(I)V

    goto :goto_0

    .line 754
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mDefaultSelectors:[I

    .line 755
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mTextSelectionCursorController:Lcom/termux/view/textselection/TextSelectionCursorController;

    if-eqz v1, :cond_1

    .line 756
    invoke-virtual {v1, v0}, Lcom/termux/view/textselection/TextSelectionCursorController;->getSelectors([I)V

    .line 758
    :cond_1
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    iget v5, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    const/4 v1, 0x0

    aget v6, v0, v1

    const/4 v1, 0x1

    aget v7, v0, v1

    const/4 v1, 0x2

    aget v8, v0, v1

    const/4 v1, 0x3

    aget v9, v0, v1

    move-object v4, p1

    invoke-virtual/range {v2 .. v9}, Lcom/termux/view/TerminalRenderer;->render(Lcom/termux/terminal/TerminalEmulator;Landroid/graphics/Canvas;IIIII)V

    .line 761
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->renderTextSelection()V

    :goto_0
    return-void
.end method

.method public onGenericMotionEvent(Landroid/view/MotionEvent;)Z
    .locals 3

    .line 482
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    const/16 v0, 0x2002

    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/16 v2, 0x8

    if-ne v0, v2, :cond_2

    const/16 v0, 0x9

    .line 484
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->getAxisValue(I)F

    move-result v0

    const/4 v2, 0x0

    cmpl-float v0, v0, v2

    const/4 v2, 0x1

    if-lez v0, :cond_0

    move v1, v2

    :cond_0
    if-eqz v1, :cond_1

    const/4 v0, -0x3

    goto :goto_0

    :cond_1
    const/4 v0, 0x3

    .line 485
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/termux/view/TerminalView;->doScroll(Landroid/view/MotionEvent;I)V

    return v2

    :cond_2
    return v1
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 9

    .line 559
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    const-string v1, "TerminalView"

    if-eqz v0, :cond_0

    .line 560
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onKeyDown(keyCode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", isSystem()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v3, ", event="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 561
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 562
    :cond_1
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 563
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    .line 566
    :cond_2
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-interface {v0, p1, p2, v3}, Lcom/termux/view/TerminalViewClient;->onKeyDown(ILandroid/view/KeyEvent;Lcom/termux/terminal/TerminalSession;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 567
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v2

    .line 569
    :cond_3
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x4

    if-eq p1, v0, :cond_5

    .line 570
    :cond_4
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 571
    :cond_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    const/4 v3, 0x2

    if-ne v0, v3, :cond_6

    if-nez p1, :cond_6

    .line 572
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getCharacters()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalOutput;->write(Ljava/lang/String;)V

    return v2

    .line 576
    :cond_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    .line 577
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_8

    iget-object v3, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v3}, Lcom/termux/view/TerminalViewClient;->readControlKey()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_0

    :cond_7
    move v3, v4

    goto :goto_1

    :cond_8
    :goto_0
    move v3, v2

    :goto_1
    and-int/lit8 v5, v0, 0x10

    if-nez v5, :cond_a

    .line 578
    iget-object v5, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v5}, Lcom/termux/view/TerminalViewClient;->readAltKey()Z

    move-result v5

    if-eqz v5, :cond_9

    goto :goto_2

    :cond_9
    move v5, v4

    goto :goto_3

    :cond_a
    :goto_2
    move v5, v2

    :goto_3
    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_b

    move v0, v2

    goto :goto_4

    :cond_b
    move v0, v4

    :goto_4
    if-eqz v3, :cond_c

    const/high16 v6, 0x40000000    # 2.0f

    goto :goto_5

    :cond_c
    move v6, v4

    .line 583
    :goto_5
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isAltPressed()Z

    move-result v7

    const/high16 v8, -0x80000000

    if-nez v7, :cond_d

    if-eqz v5, :cond_e

    :cond_d
    or-int/2addr v6, v8

    .line 584
    :cond_e
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isShiftPressed()Z

    move-result v7

    if-eqz v7, :cond_f

    const/high16 v7, 0x20000000

    or-int/2addr v6, v7

    .line 585
    :cond_f
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isNumLockOn()Z

    move-result v7

    if-eqz v7, :cond_10

    const/high16 v7, 0x10000000

    or-int/2addr v6, v7

    .line 586
    :cond_10
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isFunctionPressed()Z

    move-result v7

    if-nez v7, :cond_12

    invoke-virtual {p0, p1, v6}, Lcom/termux/view/TerminalView;->handleKeyCode(II)Z

    move-result p1

    if-eqz p1, :cond_12

    .line 587
    sget-boolean p1, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz p1, :cond_11

    iget-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    const-string p2, "handleKeyCode() took key event"

    invoke-interface {p1, v1, p2}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_11
    return v2

    :cond_12
    const/16 p1, 0x7000

    if-eqz v0, :cond_13

    goto :goto_6

    :cond_13
    const/16 p1, 0x7012

    .line 599
    :goto_6
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getMetaState()I

    move-result v0

    not-int p1, p1

    and-int/2addr p1, v0

    .line 601
    invoke-virtual {p2, p1}, Landroid/view/KeyEvent;->getUnicodeChar(I)I

    move-result p2

    .line 602
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_14

    .line 603
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "KeyEvent#getUnicodeChar("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ") returned: "

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, v1, p1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_14
    if-nez p2, :cond_15

    return v4

    .line 608
    :cond_15
    iget p1, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    and-int v0, p2, v8

    if-eqz v0, :cond_17

    if-eqz p1, :cond_16

    .line 612
    invoke-virtual {p0, p1, v3, v5}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    :cond_16
    const v0, 0x7fffffff

    and-int/2addr p2, v0

    .line 613
    iput p2, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    goto :goto_7

    :cond_17
    if-eqz p1, :cond_19

    .line 616
    invoke-static {p1, p2}, Landroid/view/KeyCharacterMap;->getDeadChar(II)I

    move-result v0

    if-lez v0, :cond_18

    move p2, v0

    .line 618
    :cond_18
    iput v4, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    .line 620
    :cond_19
    invoke-virtual {p0, p2, v3, v5}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    .line 623
    :goto_7
    iget p2, p0, Lcom/termux/view/TerminalView;->mCombiningAccent:I

    if-eq p2, p1, :cond_1a

    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_1a
    return v2
.end method

.method public onKeyPreIme(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 533
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 534
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyPreIme(keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    const/4 v0, 0x4

    if-ne p1, v0, :cond_4

    .line 536
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 537
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    return v1

    .line 539
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldBackButtonBeMappedToEscape()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 541
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_3

    if-eq v0, v1, :cond_2

    goto :goto_0

    .line 545
    :cond_2
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 543
    :cond_3
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 548
    :cond_4
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0}, Lcom/termux/view/TerminalViewClient;->shouldUseCtrlSpaceWorkaround()Z

    move-result v0

    if-eqz v0, :cond_5

    const/16 v0, 0x3e

    if-ne p1, v0, :cond_5

    .line 549
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isCtrlPressed()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 552
    invoke-virtual {p0, p1, p2}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    .line 554
    :cond_5
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyPreIme(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method public onKeyUp(ILandroid/view/KeyEvent;)Z
    .locals 3

    .line 704
    sget-boolean v0, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    if-eqz v0, :cond_0

    .line 705
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onKeyUp(keyCode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", event="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TerminalView"

    invoke-interface {v0, v2, v1}, Lcom/termux/view/TerminalViewClient;->logInfo(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    :cond_0
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_1

    return v1

    .line 708
    :cond_1
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-interface {v0, p1, p2}, Lcom/termux/view/TerminalViewClient;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 709
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return v1

    .line 711
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->isSystem()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 713
    invoke-super {p0, p1, p2}, Landroid/view/View;->onKeyUp(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1

    :cond_3
    return v1
.end method

.method public onScreenUpdated()V
    .locals 5

    .line 381
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-nez v0, :cond_0

    return-void

    .line 383
    :cond_0
    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->getScreen()Lcom/termux/terminal/TerminalBuffer;

    move-result-object v0

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    .line 384
    iget v1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    neg-int v2, v0

    if-ge v1, v2, :cond_1

    iput v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 387
    :cond_1
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    .line 389
    iget-object v1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v1}, Lcom/termux/terminal/TerminalEmulator;->getScrollCounter()I

    move-result v1

    .line 390
    iget v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    neg-int v4, v3

    add-int/2addr v4, v1

    if-le v4, v0, :cond_2

    .line 393
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->stopTextSelectionMode()V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    sub-int/2addr v3, v1

    .line 396
    iput v3, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 397
    invoke-direct {p0, v1}, Lcom/termux/view/TerminalView;->decrementYTextSelectionCursors(I)V

    goto :goto_1

    :cond_3
    :goto_0
    move v0, v2

    :goto_1
    if-nez v0, :cond_5

    .line 401
    iget v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    if-eqz v0, :cond_5

    const/4 v1, -0x3

    if-ge v0, v1, :cond_4

    .line 407
    invoke-virtual {p0}, Landroid/view/View;->awakenScrollBars()Z

    .line 409
    :cond_4
    iput v2, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 412
    :cond_5
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->clearScrollCounter()V

    .line 414
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 415
    iget-boolean v0, p0, Lcom/termux/view/TerminalView;->mAccessibilityEnabled:Z

    if-eqz v0, :cond_6

    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    .line 725
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .annotation build Landroid/annotation/TargetApi;
        value = 0x17
    .end annotation

    .line 495
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 496
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 498
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 499
    invoke-virtual {p0, p1}, Lcom/termux/view/TerminalView;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 500
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v1

    :cond_1
    const/16 v2, 0x2002

    .line 502
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isFromSource(I)Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x2

    .line 503
    invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v3

    if-eqz v3, :cond_3

    if-nez v0, :cond_2

    .line 504
    invoke-virtual {p0}, Landroid/view/View;->showContextMenu()Z

    :cond_2
    return v1

    :cond_3
    const/4 v0, 0x4

    .line 506
    invoke-virtual {p1, v0}, Landroid/view/MotionEvent;->isButtonPressed(I)Z

    move-result v0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 507
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/ClipboardManager;

    .line 508
    invoke-virtual {v0}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v0

    if-eqz v0, :cond_8

    .line 510
    invoke-virtual {v0, v3}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v0

    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ClipData$Item;->coerceToText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 511
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_8

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/termux/terminal/TerminalEmulator;->paste(Ljava/lang/String;)V

    goto :goto_2

    .line 513
    :cond_4
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalEmulator;->isMouseTrackingActive()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 514
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-eqz v0, :cond_6

    if-eq v0, v1, :cond_6

    if-eq v0, v2, :cond_5

    goto :goto_1

    :cond_5
    const/16 v0, 0x20

    .line 520
    invoke-virtual {p0, p1, v0, v1}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    goto :goto_1

    .line 517
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-nez v0, :cond_7

    move v0, v1

    goto :goto_0

    :cond_7
    move v0, v3

    :goto_0
    invoke-virtual {p0, p1, v3, v0}, Lcom/termux/view/TerminalView;->sendMouseEventCode(Landroid/view/MotionEvent;IZ)V

    :goto_1
    return v1

    .line 527
    :cond_8
    :goto_2
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mGestureRecognizer:Lcom/termux/view/GestureAndScaleRecognizer;

    invoke-virtual {v0, p1}, Lcom/termux/view/GestureAndScaleRecognizer;->onTouchEvent(Landroid/view/MotionEvent;)V

    return v1
.end method

.method sendMouseEventCode(Landroid/view/MotionEvent;IZ)V
    .locals 6

    .line 446
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v1

    float-to-int v0, v0

    add-int/lit8 v0, v0, 0x1

    .line 447
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v3, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    float-to-int v1, v1

    add-int/lit8 v1, v1, 0x1

    if-eqz p3, :cond_2

    const/16 v2, 0x41

    if-eq p2, v2, :cond_0

    const/16 v2, 0x40

    if-ne p2, v2, :cond_2

    .line 449
    :cond_0
    iget-wide v2, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_1

    .line 450
    iget v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    .line 451
    iget v1, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    goto :goto_0

    .line 453
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getDownTime()J

    move-result-wide v2

    iput-wide v2, p0, Lcom/termux/view/TerminalView;->mMouseStartDownTime:J

    .line 454
    iput v0, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartX:I

    .line 455
    iput v1, p0, Lcom/termux/view/TerminalView;->mMouseScrollStartY:I

    .line 458
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    invoke-virtual {p1, p2, v0, v1, p3}, Lcom/termux/terminal/TerminalEmulator;->sendMouseEvent(IIIZ)V

    return-void
.end method

.method public setIsTerminalViewKeyLoggingEnabled(Z)V
    .locals 0

    .line 226
    sput-boolean p1, Lcom/termux/view/TerminalView;->TERMINAL_VIEW_KEY_LOGGING_ENABLED:Z

    return-void
.end method

.method public setTerminalViewClient(Lcom/termux/view/TerminalViewClient;)V
    .locals 0

    .line 217
    iput-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    return-void
.end method

.method public setTextSize(I)V
    .locals 2

    .line 424
    new-instance v0, Lcom/termux/view/TerminalRenderer;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    if-nez v1, :cond_0

    sget-object v1, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_0

    :cond_0
    iget-object v1, v1, Lcom/termux/view/TerminalRenderer;->mTypeface:Landroid/graphics/Typeface;

    :goto_0
    invoke-direct {v0, p1, v1}, Lcom/termux/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    .line 425
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    return-void
.end method

.method public setTopRow(I)V
    .locals 0

    .line 797
    iput p1, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    return-void
.end method

.method public setTypeface(Landroid/graphics/Typeface;)V
    .locals 2

    .line 429
    new-instance v0, Lcom/termux/view/TerminalRenderer;

    iget-object v1, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v1, v1, Lcom/termux/view/TerminalRenderer;->mTextSize:I

    invoke-direct {v0, v1, p1}, Lcom/termux/view/TerminalRenderer;-><init>(ILandroid/graphics/Typeface;)V

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    .line 430
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->updateSize()V

    .line 431
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public startTextSelectionMode(Landroid/view/MotionEvent;)V
    .locals 1

    .line 875
    invoke-virtual {p0}, Landroid/view/View;->requestFocus()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 879
    :cond_0
    invoke-direct {p0, p1}, Lcom/termux/view/TerminalView;->showTextSelectionCursors(Landroid/view/MotionEvent;)V

    .line 880
    iget-object p1, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v0

    invoke-interface {p1, v0}, Lcom/termux/view/TerminalViewClient;->copyModeChanged(Z)V

    .line 882
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public stopTextSelectionMode()V
    .locals 2

    .line 886
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->hideTextSelectionCursors()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mClient:Lcom/termux/view/TerminalViewClient;

    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->isSelectingText()Z

    move-result v1

    invoke-interface {v0, v1}, Lcom/termux/view/TerminalViewClient;->copyModeChanged(Z)V

    .line 888
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_0
    return-void
.end method

.method public updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V
    .locals 1

    .line 951
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->getTextSelectionActionMode()Landroid/view/ActionMode;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 952
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 954
    :cond_0
    invoke-virtual {p0}, Lcom/termux/view/TerminalView;->hideFloatingToolbar()V

    goto :goto_0

    .line 958
    :cond_1
    invoke-direct {p0}, Lcom/termux/view/TerminalView;->showFloatingToolbar()V

    :cond_2
    :goto_0
    return-void
.end method

.method public updateSize()V
    .locals 5

    .line 730
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v0

    .line 731
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    .line 732
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    if-nez v2, :cond_0

    goto :goto_0

    :cond_0
    int-to-float v0, v0

    .line 735
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v2, v2, Lcom/termux/view/TerminalRenderer;->mFontWidth:F

    div-float/2addr v0, v2

    float-to-int v0, v0

    const/4 v2, 0x4

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 736
    iget-object v3, p0, Lcom/termux/view/TerminalView;->mRenderer:Lcom/termux/view/TerminalRenderer;

    iget v4, v3, Lcom/termux/view/TerminalRenderer;->mFontLineSpacingAndAscent:I

    sub-int/2addr v1, v4

    iget v3, v3, Lcom/termux/view/TerminalRenderer;->mFontLineSpacing:I

    div-int/2addr v1, v3

    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 738
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    if-eqz v2, :cond_1

    iget v3, v2, Lcom/termux/terminal/TerminalEmulator;->mColumns:I

    if-ne v0, v3, :cond_1

    iget v2, v2, Lcom/termux/terminal/TerminalEmulator;->mRows:I

    if-eq v1, v2, :cond_2

    .line 739
    :cond_1
    iget-object v2, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v2, v0, v1}, Lcom/termux/terminal/TerminalSession;->updateSize(II)V

    .line 740
    iget-object v0, p0, Lcom/termux/view/TerminalView;->mTermSession:Lcom/termux/terminal/TerminalSession;

    invoke-virtual {v0}, Lcom/termux/terminal/TerminalSession;->getEmulator()Lcom/termux/terminal/TerminalEmulator;

    move-result-object v0

    iput-object v0, p0, Lcom/termux/view/TerminalView;->mEmulator:Lcom/termux/terminal/TerminalEmulator;

    const/4 v0, 0x0

    .line 742
    iput v0, p0, Lcom/termux/view/TerminalView;->mTopRow:I

    .line 743
    invoke-virtual {p0, v0, v0}, Landroid/view/View;->scrollTo(II)V

    .line 744
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    :cond_2
    :goto_0
    return-void
.end method
