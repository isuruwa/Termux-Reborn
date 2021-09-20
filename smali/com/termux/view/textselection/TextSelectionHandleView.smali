.class public Lcom/termux/view/textselection/TextSelectionHandleView;
.super Landroid/view/View;
.source "TextSelectionHandleView.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "ViewConstructor"
    }
.end annotation


# instance fields
.field private final mCursorController:Lcom/termux/view/textselection/CursorController;

.field private mHandle:Landroid/widget/PopupWindow;

.field private mHandleDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleHeight:I

.field private final mHandleLeftDrawable:Landroid/graphics/drawable/Drawable;

.field private final mHandleRightDrawable:Landroid/graphics/drawable/Drawable;

.field private mHandleWidth:I

.field private mHotspotX:F

.field private mHotspotY:F

.field private final mInitialOrientation:I

.field private mIsDragging:Z

.field private mLastParentX:I

.field private mLastParentY:I

.field private mLastTime:J

.field private mOrientation:I

.field private mPointX:I

.field private mPointY:I

.field final mTempCoords:[I

.field mTempRect:Landroid/graphics/Rect;

.field private mTouchOffsetY:F

.field private mTouchToWindowOffsetX:F

.field private mTouchToWindowOffsetY:F

.field private final terminalView:Lcom/termux/view/TerminalView;


# direct methods
.method public constructor <init>(Lcom/termux/view/TerminalView;Lcom/termux/view/textselection/CursorController;I)V
    .locals 1

    .line 55
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    new-array v0, v0, [I

    .line 30
    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 56
    iput-object p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    .line 57
    iput-object p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mCursorController:Lcom/termux/view/textselection/CursorController;

    .line 58
    iput p3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mInitialOrientation:I

    .line 60
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/termux/view/R$drawable;->text_select_handle_left_material:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleLeftDrawable:Landroid/graphics/drawable/Drawable;

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    sget p2, Lcom/termux/view/R$drawable;->text_select_handle_right_material:I

    invoke-virtual {p1, p2}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleRightDrawable:Landroid/graphics/drawable/Drawable;

    .line 63
    invoke-virtual {p0, p3}, Lcom/termux/view/textselection/TextSelectionHandleView;->setOrientation(I)V

    return-void
.end method

.method private checkChangedOrientation(IZ)V
    .locals 6

    .line 199
    iget-boolean v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    if-nez v0, :cond_0

    if-nez p2, :cond_0

    return-void

    .line 202
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v0

    .line 203
    iget-wide v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastTime:J

    sub-long v2, v0, v2

    const-wide/16 v4, 0x32

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    if-nez p2, :cond_1

    return-void

    .line 206
    :cond_1
    iput-wide v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastTime:J

    .line 208
    iget-object p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    .line 209
    invoke-virtual {p2}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 210
    invoke-virtual {p2}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 211
    invoke-virtual {p2}, Landroid/view/View;->getTop()I

    move-result v2

    .line 212
    invoke-virtual {p2}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 214
    iget-object v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    if-nez v4, :cond_2

    .line 215
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    .line 217
    :cond_2
    iget-object v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    .line 218
    iget-object v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    add-int/2addr v0, v5

    iput v0, v4, Landroid/graphics/Rect;->left:I

    .line 219
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingTop()I

    move-result v0

    add-int/2addr v2, v0

    iput v2, v4, Landroid/graphics/Rect;->top:I

    .line 220
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingRight()I

    move-result v0

    sub-int/2addr v1, v0

    iput v1, v4, Landroid/graphics/Rect;->right:I

    .line 221
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0}, Landroid/view/View;->getPaddingBottom()I

    move-result v0

    sub-int/2addr v3, v0

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 223
    invoke-virtual {p2}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_6

    const/4 v1, 0x0

    .line 224
    invoke-interface {v0, p2, v4, v1}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    .line 228
    :cond_3
    iget p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleWidth:I

    sub-int v0, p1, p2

    iget v1, v4, Landroid/graphics/Rect;->left:I

    if-ge v0, v1, :cond_4

    const/4 p1, 0x2

    .line 229
    invoke-virtual {p0, p1}, Lcom/termux/view/textselection/TextSelectionHandleView;->changeOrientation(I)V

    goto :goto_0

    :cond_4
    add-int/2addr p1, p2

    .line 230
    iget p2, v4, Landroid/graphics/Rect;->right:I

    if-le p1, p2, :cond_5

    const/4 p1, 0x0

    .line 231
    invoke-virtual {p0, p1}, Lcom/termux/view/textselection/TextSelectionHandleView;->changeOrientation(I)V

    goto :goto_0

    .line 233
    :cond_5
    iget p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mInitialOrientation:I

    invoke-virtual {p0, p1}, Lcom/termux/view/textselection/TextSelectionHandleView;->changeOrientation(I)V

    :cond_6
    :goto_0
    return-void
.end method

.method private initHandle()V
    .locals 4

    .line 67
    new-instance v0, Landroid/widget/PopupWindow;

    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const v3, 0x10102c8

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    const/4 v1, 0x1

    .line 69
    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setSplitTouchEnabled(Z)V

    .line 70
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 71
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    const/16 v3, 0x3ea

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWindowLayoutType(I)V

    .line 72
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    const/4 v3, -0x2

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 73
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v3}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 74
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 75
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v1}, Landroid/widget/PopupWindow;->setAnimationStyle(I)V

    .line 76
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setEnterTransition(Landroid/transition/Transition;)V

    .line 77
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, v2}, Landroid/widget/PopupWindow;->setExitTransition(Landroid/transition/Transition;)V

    .line 78
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    invoke-virtual {v0, p0}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    return-void
.end method

.method private isPositionVisible()Z
    .locals 7

    .line 239
    iget-boolean v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 243
    :cond_0
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    .line 245
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 247
    invoke-virtual {v0}, Landroid/view/View;->getHeight()I

    move-result v3

    .line 249
    iget-object v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    if-nez v4, :cond_1

    .line 250
    new-instance v4, Landroid/graphics/Rect;

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    iput-object v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    .line 252
    :cond_1
    iget-object v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempRect:Landroid/graphics/Rect;

    .line 253
    iget-object v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingLeft()I

    move-result v5

    const/4 v6, 0x0

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->left:I

    .line 254
    iget-object v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 255
    iget-object v5, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v5}, Landroid/view/View;->getPaddingRight()I

    move-result v5

    sub-int/2addr v2, v5

    iput v2, v4, Landroid/graphics/Rect;->right:I

    .line 256
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v3, v2

    iput v3, v4, Landroid/graphics/Rect;->bottom:I

    .line 258
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    if-eqz v2, :cond_4

    const/4 v3, 0x0

    .line 259
    invoke-interface {v2, v0, v4, v3}, Landroid/view/ViewParent;->getChildVisibleRect(Landroid/view/View;Landroid/graphics/Rect;Landroid/graphics/Point;)Z

    move-result v2

    if-nez v2, :cond_2

    goto :goto_1

    .line 263
    :cond_2
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 264
    invoke-virtual {v0, v2}, Landroid/view/View;->getLocationInWindow([I)V

    .line 265
    aget v0, v2, v6

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointX:I

    add-int/2addr v0, v3

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    float-to-int v3, v3

    add-int/2addr v0, v3

    .line 266
    aget v2, v2, v1

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointY:I

    add-int/2addr v2, v3

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotY:F

    float-to-int v3, v3

    add-int/2addr v2, v3

    .line 268
    iget v3, v4, Landroid/graphics/Rect;->left:I

    if-lt v0, v3, :cond_3

    iget v3, v4, Landroid/graphics/Rect;->right:I

    if-gt v0, v3, :cond_3

    iget v0, v4, Landroid/graphics/Rect;->top:I

    if-lt v2, v0, :cond_3

    iget v0, v4, Landroid/graphics/Rect;->bottom:I

    if-gt v2, v0, :cond_3

    goto :goto_0

    :cond_3
    move v1, v6

    :goto_0
    return v1

    :cond_4
    :goto_1
    return v6
.end method

.method private moveTo(IIZ)V
    .locals 5

    .line 156
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    .line 157
    invoke-direct {p0, p1, p3}, Lcom/termux/view/textselection/TextSelectionHandleView;->checkChangedOrientation(IZ)V

    int-to-float p1, p1

    .line 158
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isShowing()Z

    move-result p3

    if-eqz p3, :cond_0

    goto :goto_0

    :cond_0
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    :goto_0
    sub-float/2addr p1, v0

    float-to-int p1, p1

    iput p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointX:I

    .line 159
    iput p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointY:I

    .line 161
    invoke-direct {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isPositionVisible()Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x0

    .line 164
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isShowing()Z

    move-result p2

    const/4 p3, 0x1

    const/4 v0, 0x0

    if-eqz p2, :cond_1

    .line 165
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 166
    iget-object p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 167
    aget p2, p1, v0

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointX:I

    add-int/2addr p2, v1

    .line 168
    aget v1, p1, p3

    iget v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointY:I

    add-int/2addr v1, v2

    .line 169
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    if-eqz v2, :cond_2

    .line 170
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v4

    invoke-virtual {v2, p2, v1, v3, v4}, Landroid/widget/PopupWindow;->update(IIII)V

    goto :goto_1

    .line 172
    :cond_1
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->show()V

    .line 175
    :cond_2
    :goto_1
    iget-boolean p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    if-eqz p2, :cond_6

    if-nez p1, :cond_3

    .line 177
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 178
    iget-object p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {p2, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 180
    :cond_3
    aget p2, p1, v0

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentX:I

    if-ne p2, v1, :cond_4

    aget p2, p1, p3

    iget v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentY:I

    if-eq p2, v2, :cond_6

    .line 181
    :cond_4
    iget p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetX:F

    aget v2, p1, v0

    sub-int/2addr v2, v1

    int-to-float v1, v2

    add-float/2addr p2, v1

    iput p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetX:F

    .line 182
    iget p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetY:F

    aget v1, p1, p3

    iget v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentY:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    add-float/2addr p2, v1

    iput p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetY:F

    .line 183
    aget p2, p1, v0

    iput p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentX:I

    .line 184
    aget p1, p1, p3

    iput p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentY:I

    goto :goto_2

    .line 188
    :cond_5
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->hide()V

    :cond_6
    :goto_2
    return-void
.end method


# virtual methods
.method public changeOrientation(I)V
    .locals 1

    .line 193
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mOrientation:I

    if-eq v0, p1, :cond_0

    .line 194
    invoke-virtual {p0, p1}, Lcom/termux/view/textselection/TextSelectionHandleView;->setOrientation(I)V

    :cond_0
    return-void
.end method

.method public getHandleHeight()I
    .locals 1

    .line 323
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleHeight:I

    return v0
.end method

.method public getHandleWidth()I
    .locals 1

    .line 327
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleWidth:I

    return v0
.end method

.method public hide()V
    .locals 1

    const/4 v0, 0x0

    .line 131
    iput-boolean v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    .line 133
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 134
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 137
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->removeFromParent()V

    const/4 v0, 0x0

    .line 138
    iput-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    .line 140
    :cond_0
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public isParentNull()Z
    .locals 1

    .line 338
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isShowing()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    if-eqz v0, :cond_0

    .line 332
    invoke-virtual {v0}, Landroid/widget/PopupWindow;->isShowing()Z

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .line 274
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    .line 275
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    .line 276
    iget-object v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 277
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 0

    .line 318
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    iget-object p2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 319
    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result p2

    .line 318
    invoke-virtual {p0, p1, p2}, Landroid/view/View;->setMeasuredDimension(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 283
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->updateFloatingToolbarVisibility(Landroid/view/MotionEvent;)V

    .line 284
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    if-eq v0, v2, :cond_1

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    const/4 p1, 0x3

    if-eq v0, p1, :cond_1

    goto :goto_0

    .line 299
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 300
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 302
    iget v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetX:F

    sub-float/2addr v0, v1

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    add-float/2addr v0, v1

    .line 303
    iget v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetY:F

    sub-float/2addr p1, v1

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotY:F

    add-float/2addr p1, v1

    iget v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchOffsetY:F

    add-float/2addr p1, v1

    .line 305
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mCursorController:Lcom/termux/view/textselection/CursorController;

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-interface {v1, p0, v0, p1}, Lcom/termux/view/textselection/CursorController;->updatePosition(Lcom/termux/view/textselection/TextSelectionHandleView;II)V

    goto :goto_0

    .line 311
    :cond_1
    iput-boolean v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    goto :goto_0

    .line 286
    :cond_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    .line 287
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result p1

    .line 288
    iget v3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointX:I

    int-to-float v3, v3

    sub-float/2addr v0, v3

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetX:F

    .line 289
    iget v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointY:I

    int-to-float v0, v0

    sub-float/2addr p1, v0

    iput p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchToWindowOffsetY:F

    .line 290
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 291
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Landroid/view/View;->getLocationInWindow([I)V

    .line 292
    aget v0, p1, v1

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentX:I

    .line 293
    aget p1, p1, v2

    iput p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mLastParentY:I

    .line 294
    iput-boolean v2, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mIsDragging:Z

    :goto_0
    return v2
.end method

.method public positionAtCursor(IIZ)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v0, p1}, Lcom/termux/view/TerminalView;->getPointX(I)I

    move-result p1

    .line 151
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    add-int/lit8 p2, p2, 0x1

    invoke-virtual {v0, p2}, Lcom/termux/view/TerminalView;->getPointY(I)I

    move-result p2

    .line 152
    invoke-direct {p0, p1, p2, p3}, Lcom/termux/view/textselection/TextSelectionHandleView;->moveTo(IIZ)V

    return-void
.end method

.method public removeFromParent()V
    .locals 1

    .line 144
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isParentNull()Z

    move-result v0

    if-nez v0, :cond_0

    .line 145
    invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public setOrientation(I)V
    .locals 2

    .line 82
    iput p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mOrientation:I

    const/high16 v0, 0x40800000    # 4.0f

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    if-eq p1, v1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 93
    :cond_0
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleRightDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 94
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    int-to-float v1, p1

    div-float/2addr v1, v0

    .line 95
    iput v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    goto :goto_0

    .line 86
    :cond_1
    iget-object p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleLeftDrawable:Landroid/graphics/drawable/Drawable;

    iput-object p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    .line 87
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result p1

    mul-int/lit8 v1, p1, 0x3

    int-to-float v1, v1

    div-float/2addr v1, v0

    .line 88
    iput v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotX:F

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    iput v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleHeight:I

    .line 102
    iput p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandleWidth:I

    neg-int p1, v0

    int-to-float p1, p1

    const v0, 0x3e99999a    # 0.3f

    mul-float/2addr p1, v0

    .line 103
    iput p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTouchOffsetY:F

    const/4 p1, 0x0

    .line 104
    iput p1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHotspotY:F

    .line 105
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    return-void
.end method

.method public show()V
    .locals 6

    .line 109
    invoke-direct {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->isPositionVisible()Z

    move-result v0

    if-nez v0, :cond_0

    .line 110
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->hide()V

    return-void

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->removeFromParent()V

    .line 118
    invoke-direct {p0}, Lcom/termux/view/textselection/TextSelectionHandleView;->initHandle()V

    .line 119
    invoke-virtual {p0}, Landroid/view/View;->invalidate()V

    .line 121
    iget-object v0, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mTempCoords:[I

    .line 122
    iget-object v1, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    invoke-virtual {v1, v0}, Landroid/view/View;->getLocationInWindow([I)V

    const/4 v1, 0x0

    .line 123
    aget v2, v0, v1

    iget v3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointX:I

    add-int/2addr v2, v3

    aput v2, v0, v1

    const/4 v2, 0x1

    .line 124
    aget v3, v0, v2

    iget v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mPointY:I

    add-int/2addr v3, v4

    aput v3, v0, v2

    .line 126
    iget-object v3, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->mHandle:Landroid/widget/PopupWindow;

    if-eqz v3, :cond_1

    .line 127
    iget-object v4, p0, Lcom/termux/view/textselection/TextSelectionHandleView;->terminalView:Lcom/termux/view/TerminalView;

    aget v5, v0, v1

    aget v0, v0, v2

    invoke-virtual {v3, v4, v1, v5, v0}, Landroid/widget/PopupWindow;->showAtLocation(Landroid/view/View;III)V

    :cond_1
    return-void
.end method
