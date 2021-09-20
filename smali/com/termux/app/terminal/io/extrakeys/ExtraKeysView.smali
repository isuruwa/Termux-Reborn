.class public final Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;
.super Landroid/widget/GridLayout;
.source "ExtraKeysView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;,
        Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;
    }
.end annotation


# static fields
.field static final keyCodesForString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private longPressCount:I

.field private popupWindow:Landroid/widget/PopupWindow;

.field private scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

.field private final specialButtons:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;",
            "Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;",
            ">;"
        }
    .end annotation
.end field

.field private final specialButtonsKeys:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$1;

    invoke-direct {v0}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$1;-><init>()V

    sput-object v0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->keyCodesForString:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1, p2}, Landroid/widget/GridLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 146
    new-instance p1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$2;

    invoke-direct {p1, p0}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$2;-><init>(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;)V

    iput-object p1, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->specialButtons:Ljava/util/Map;

    .line 152
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->stream()Ljava/util/stream/Stream;

    move-result-object p1

    sget-object p2, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$Ij2_2OMeNR08KJnF9cgDYZJ6sks;->INSTANCE:Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$Ij2_2OMeNR08KJnF9cgDYZJ6sks;

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object p1

    invoke-static {}, Ljava/util/stream/Collectors;->toSet()Ljava/util/stream/Collector;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Set;

    iput-object p1, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->specialButtonsKeys:Ljava/util/Set;

    return-void
.end method

.method private createSpecialButton(Ljava/lang/String;Z)Landroid/widget/Button;
    .locals 4

    .line 176
    iget-object v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->specialButtons:Ljava/util/Map;

    invoke-static {p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;->valueOf(Ljava/lang/String;)Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    :cond_0
    const/4 v1, 0x1

    .line 178
    iput-boolean v1, p1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->isOn:Z

    .line 179
    new-instance v1, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x101032f

    invoke-direct {v1, v2, v0, v3}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 180
    iget-boolean v0, p1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->isActive:Z

    if-eqz v0, :cond_1

    const v0, -0x7f2116

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setTextColor(I)V

    if-eqz p2, :cond_2

    .line 182
    iget-object p1, p1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->buttons:Ljava/util/List;

    invoke-interface {p1, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    return-object v1
.end method

.method private isSpecialButton(Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)Z
    .locals 1

    .line 155
    iget-object v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->specialButtonsKeys:Ljava/util/Set;

    invoke-virtual {p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method private synthetic lambda$null$2(Landroid/view/View;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V
    .locals 1

    .line 307
    iget v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->longPressCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->longPressCount:I

    .line 308
    invoke-direct {p0, p1, p2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->sendKey(Landroid/view/View;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V

    return-void
.end method

.method private synthetic lambda$reload$1(Landroid/widget/Button;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;Landroid/view/View;)V
    .locals 3

    .line 274
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "haptic_feedback_enabled"

    const/4 v1, 0x0

    invoke-static {p3, v0, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    if-eqz p3, :cond_1

    .line 277
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1c

    const/4 v2, 0x3

    if-lt p3, v0, :cond_0

    .line 278
    invoke-virtual {p1, v2}, Landroid/widget/Button;->performHapticFeedback(I)Z

    goto :goto_0

    .line 281
    :cond_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p3

    const-string v0, "zen_mode"

    invoke-static {p3, v0, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result p3

    const/4 v0, 0x2

    if-eq p3, v0, :cond_1

    .line 282
    invoke-virtual {p1, v2}, Landroid/widget/Button;->performHapticFeedback(I)Z

    .line 287
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getRootView()Landroid/view/View;

    move-result-object p1

    .line 288
    invoke-direct {p0, p2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->isSpecialButton(Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)Z

    move-result p3

    if-eqz p3, :cond_3

    .line 289
    iget-object p1, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->specialButtons:Ljava/util/Map;

    invoke-virtual {p2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;->valueOf(Ljava/lang/String;)Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    move-result-object p2

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;

    if-nez p1, :cond_2

    return-void

    .line 291
    :cond_2
    iget-boolean p2, p1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->isActive:Z

    xor-int/lit8 p2, p2, 0x1

    invoke-virtual {p1, p2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->setIsActive(Z)V

    goto :goto_1

    .line 293
    :cond_3
    invoke-direct {p0, p1, p2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->sendKey(Landroid/view/View;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V

    :goto_1
    return-void
.end method

.method private synthetic lambda$reload$3(Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 12

    .line 298
    invoke-virtual {p0}, Landroid/widget/GridLayout;->getRootView()Landroid/view/View;

    move-result-object v0

    .line 299
    invoke-virtual {p3}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const v2, -0x808081

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v1, :cond_d

    const/4 v5, 0x0

    if-eq v1, v4, :cond_6

    const/4 v0, 0x2

    if-eq v1, v0, :cond_2

    const/4 p1, 0x3

    if-eq v1, p1, :cond_0

    return v4

    .line 332
    :cond_0
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 333
    iget-object p1, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p1, :cond_1

    .line 334
    invoke-interface {p1}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 335
    iput-object v5, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    :cond_1
    return v4

    .line 314
    :cond_2
    invoke-virtual {p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->getPopup()Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;

    move-result-object v0

    if-eqz v0, :cond_5

    .line 315
    iget-object v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v1, 0x0

    if-nez v0, :cond_4

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 316
    iget-object v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz v0, :cond_3

    .line 317
    invoke-interface {v0}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 318
    iput-object v5, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 320
    :cond_3
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 321
    invoke-virtual {p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->getPopup()Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;

    move-result-object p1

    invoke-virtual {p0, p2, p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->popup(Landroid/view/View;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V

    .line 323
    :cond_4
    iget-object p1, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz p1, :cond_5

    invoke-virtual {p3}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    cmpl-float p1, p1, v1

    if-lez p1, :cond_5

    .line 324
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 325
    iget-object p1, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p1}, Landroid/widget/PopupWindow;->dismiss()V

    .line 326
    iput-object v5, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    :cond_5
    return v4

    .line 339
    :cond_6
    invoke-virtual {p2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 340
    iget-object p3, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    if-eqz p3, :cond_7

    .line 341
    invoke-interface {p3}, Ljava/util/concurrent/ScheduledExecutorService;->shutdownNow()Ljava/util/List;

    .line 342
    iput-object v5, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 344
    :cond_7
    iget p3, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->longPressCount:I

    if-eqz p3, :cond_8

    iget-object p3, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_c

    .line 345
    :cond_8
    iget-object p3, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    if-eqz p3, :cond_b

    .line 346
    invoke-virtual {p3, v5}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 347
    iget-object p2, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2}, Landroid/widget/PopupWindow;->dismiss()V

    .line 348
    iput-object v5, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    .line 349
    invoke-virtual {p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->getPopup()Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;

    move-result-object p2

    if-eqz p2, :cond_c

    .line 350
    invoke-virtual {p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->getPopup()Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->isSpecialButton(Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)Z

    move-result p2

    if-eqz p2, :cond_a

    .line 351
    iget-object p2, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->specialButtons:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->getPopup()Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;

    move-result-object p1

    invoke-virtual {p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;->valueOf(Ljava/lang/String;)Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    move-result-object p1

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;

    if-nez p1, :cond_9

    return v4

    .line 353
    :cond_9
    iget-boolean p2, p1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->isActive:Z

    xor-int/2addr p2, v4

    invoke-virtual {p1, p2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->setIsActive(Z)V

    goto :goto_0

    .line 355
    :cond_a
    invoke-virtual {p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->getPopup()Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;

    move-result-object p1

    invoke-direct {p0, v0, p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->sendKey(Landroid/view/View;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V

    goto :goto_0

    .line 359
    :cond_b
    invoke-virtual {p2}, Landroid/view/View;->performClick()Z

    :cond_c
    :goto_0
    return v4

    .line 301
    :cond_d
    iput v3, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->longPressCount:I

    .line 302
    invoke-virtual {p2, v2}, Landroid/view/View;->setBackgroundColor(I)V

    const-string v5, "UP"

    const-string v6, "DOWN"

    const-string v7, "LEFT"

    const-string v8, "RIGHT"

    const-string v9, "BKSP"

    const-string v10, "DEL"

    .line 303
    filled-new-array/range {v5 .. v10}, [Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    invoke-virtual {p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_e

    .line 305
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadScheduledExecutor()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v5

    iput-object v5, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->scheduledExecutor:Ljava/util/concurrent/ScheduledExecutorService;

    .line 306
    new-instance v6, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$4GUV5YTuZ3ObeqpnssLHwJ_lz4s;

    invoke-direct {v6, p0, v0, p1}, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$4GUV5YTuZ3ObeqpnssLHwJ_lz4s;-><init>(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;Landroid/view/View;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V

    const-wide/16 v7, 0x190

    const-wide/16 v9, 0x50

    sget-object v11, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface/range {v5 .. v11}, Ljava/util/concurrent/ScheduledExecutorService;->scheduleWithFixedDelay(Ljava/lang/Runnable;JJLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    :cond_e
    return v4
.end method

.method static synthetic lambda$sendKey$0(Lcom/termux/view/TerminalView;ZZI)V
    .locals 0

    .line 105
    invoke-virtual {p0, p3, p1, p2}, Lcom/termux/view/TerminalView;->inputCodePoint(IZZ)V

    return-void
.end method

.method static maximumLength([[Ljava/lang/Object;)I
    .locals 4

    .line 221
    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v3, p0, v1

    .line 222
    array-length v3, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return v2
.end method

.method private sendKey(Landroid/view/View;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V
    .locals 8

    .line 111
    invoke-virtual {p2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->isMacro()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 112
    invoke-virtual {p2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object p2

    const-string v0, " "

    invoke-virtual {p2, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p2

    .line 115
    array-length v0, p2

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge v2, v0, :cond_3

    aget-object v5, p2, v2

    const-string v6, "CTRL"

    .line 116
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    const/4 v7, 0x1

    if-eqz v6, :cond_0

    move v3, v7

    goto :goto_1

    :cond_0
    const-string v6, "ALT"

    .line 118
    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    move v4, v7

    goto :goto_1

    .line 121
    :cond_1
    invoke-direct {p0, p1, v5, v3, v4}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->sendKey(Landroid/view/View;Ljava/lang/String;ZZ)V

    move v3, v1

    move v4, v3

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 127
    :cond_2
    invoke-virtual {p2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2, v1, v1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->sendKey(Landroid/view/View;Ljava/lang/String;ZZ)V

    :cond_3
    return-void
.end method

.method private sendKey(Landroid/view/View;Ljava/lang/String;ZZ)V
    .locals 16
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "RtlHardcoded"
        }
    .end annotation

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    move/from16 v3, p4

    const v4, 0x7f0700bd

    .line 83
    invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lcom/termux/view/TerminalView;

    const-string v5, "KEYBOARD"

    .line 84
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    const/4 v6, 0x0

    if-eqz v5, :cond_0

    .line 85
    invoke-virtual/range {p0 .. p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "input_method"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 86
    invoke-virtual {v0, v6, v6}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V

    goto :goto_0

    :cond_0
    const-string v5, "DRAWER"

    .line 87
    invoke-virtual {v5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    const v1, 0x7f070056

    .line 88
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/drawerlayout/widget/DrawerLayout;

    const/4 v1, 0x3

    .line 89
    invoke-virtual {v0, v1}, Landroidx/drawerlayout/widget/DrawerLayout;->openDrawer(I)V

    goto :goto_0

    .line 90
    :cond_1
    sget-object v0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->keyCodesForString:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 91
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_2

    return-void

    :cond_2
    if-eqz v2, :cond_3

    const/16 v6, 0x3000

    :cond_3
    if-eqz v3, :cond_4

    or-int/lit8 v6, v6, 0x12

    :cond_4
    move v15, v6

    .line 100
    new-instance v1, Landroid/view/KeyEvent;

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    const/4 v12, 0x1

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v13

    const/4 v14, 0x0

    move-object v7, v1

    invoke-direct/range {v7 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIII)V

    .line 101
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v4, v0, v1}, Lcom/termux/view/TerminalView;->onKeyDown(ILandroid/view/KeyEvent;)Z

    goto :goto_0

    .line 104
    :cond_5
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->codePoints()Ljava/util/stream/IntStream;

    move-result-object v0

    new-instance v1, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$1Mq0xnLw0HFtlbpkkdERTGMSA30;

    invoke-direct {v1, v4, v2, v3}, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$1Mq0xnLw0HFtlbpkkdERTGMSA30;-><init>(Lcom/termux/view/TerminalView;ZZ)V

    invoke-interface {v0, v1}, Ljava/util/stream/IntStream;->forEach(Ljava/util/function/IntConsumer;)V

    :goto_0
    return-void
.end method


# virtual methods
.method public synthetic lambda$null$2$ExtraKeysView(Landroid/view/View;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->lambda$null$2(Landroid/view/View;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V

    return-void
.end method

.method public synthetic lambda$reload$1$ExtraKeysView(Landroid/widget/Button;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->lambda$reload$1(Landroid/widget/Button;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;Landroid/view/View;)V

    return-void
.end method

.method public synthetic lambda$reload$3$ExtraKeysView(Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->lambda$reload$3(Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;Landroid/view/View;Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method popup(Landroid/view/View;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V
    .locals 7

    .line 188
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    .line 189
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v1

    .line 191
    invoke-direct {p0, p2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->isSpecialButton(Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 192
    invoke-virtual {p2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2, v3}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->createSpecialButton(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v2

    if-nez v2, :cond_1

    return-void

    .line 195
    :cond_0
    new-instance v2, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const/4 v5, 0x0

    const v6, 0x101032f

    invoke-direct {v2, v4, v5, v6}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v4, -0x1

    .line 196
    invoke-virtual {v2, v4}, Landroid/widget/Button;->setTextColor(I)V

    .line 198
    :cond_1
    invoke-virtual {p2}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->getDisplay()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 199
    invoke-virtual {v2, v3, v3, v3, v3}, Landroid/widget/Button;->setPadding(IIII)V

    .line 200
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinHeight(I)V

    .line 201
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinWidth(I)V

    .line 202
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinimumWidth(I)V

    .line 203
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setMinimumHeight(I)V

    .line 204
    invoke-virtual {v2, v0}, Landroid/widget/Button;->setWidth(I)V

    .line 205
    invoke-virtual {v2, v1}, Landroid/widget/Button;->setHeight(I)V

    const p2, -0x808081

    .line 206
    invoke-virtual {v2, p2}, Landroid/widget/Button;->setBackgroundColor(I)V

    .line 207
    new-instance p2, Landroid/widget/PopupWindow;

    invoke-direct {p2, p0}, Landroid/widget/PopupWindow;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v0, -0x2

    .line 208
    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 209
    iget-object p2, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v0}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 210
    iget-object p2, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 211
    iget-object p2, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x1

    invoke-virtual {p2, v2}, Landroid/widget/PopupWindow;->setOutsideTouchable(Z)V

    .line 212
    iget-object p2, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {p2, v3}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 213
    iget-object p2, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->popupWindow:Landroid/widget/PopupWindow;

    mul-int/2addr v1, v0

    invoke-virtual {p2, p1, v3, v1}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    return-void
.end method

.method public readSpecialButton(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;)Z
    .locals 2

    .line 163
    iget-object v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->specialButtons:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;

    if-eqz p1, :cond_2

    .line 167
    iget-boolean v0, p1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->isOn:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-boolean v0, p1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->isActive:Z

    if-nez v0, :cond_0

    goto :goto_0

    .line 170
    :cond_0
    invoke-virtual {p1, v1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->setIsActive(Z)V

    const/4 p1, 0x1

    return p1

    :cond_1
    :goto_0
    return v1

    .line 165
    :cond_2
    new-instance p1, Ljava/lang/RuntimeException;

    const-string v0, "Must be a valid special button (see source)"

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public reload(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;)V
    .locals 8
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 246
    :cond_0
    iget-object v0, p0, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->specialButtons:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;

    .line 247
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, v1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButtonState;->buttons:Ljava/util/List;

    goto :goto_0

    .line 249
    :cond_1
    invoke-virtual {p0}, Landroid/widget/GridLayout;->removeAllViews()V

    .line 251
    invoke-virtual {p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysInfo;->getMatrix()[[Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;

    move-result-object p1

    .line 253
    array-length v0, p1

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->setRowCount(I)V

    .line 254
    invoke-static {p1}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->maximumLength([[Ljava/lang/Object;)I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/widget/GridLayout;->setColumnCount(I)V

    const/4 v0, 0x0

    move v1, v0

    .line 256
    :goto_1
    array-length v2, p1

    if-ge v1, v2, :cond_5

    move v2, v0

    .line 257
    :goto_2
    aget-object v3, p1, v1

    array-length v3, v3

    if-ge v2, v3, :cond_4

    .line 258
    aget-object v3, p1, v1

    aget-object v3, v3, v2

    .line 261
    invoke-direct {p0, v3}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->isSpecialButton(Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 262
    invoke-virtual {v3}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->getKey()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;->createSpecialButton(Ljava/lang/String;Z)Landroid/widget/Button;

    move-result-object v4

    if-nez v4, :cond_3

    return-void

    .line 265
    :cond_2
    new-instance v4, Landroid/widget/Button;

    invoke-virtual {p0}, Landroid/widget/GridLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    const/4 v6, 0x0

    const v7, 0x101032f

    invoke-direct {v4, v5, v6, v7}, Landroid/widget/Button;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 268
    :cond_3
    invoke-virtual {v3}, Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;->getDisplay()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    const/4 v5, -0x1

    .line 269
    invoke-virtual {v4, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 270
    invoke-virtual {v4, v0, v0, v0, v0}, Landroid/widget/Button;->setPadding(IIII)V

    .line 273
    new-instance v5, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$w0w0_8EwRvMCwy8SDz5Mp7JFz_s;

    invoke-direct {v5, p0, v4, v3}, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$w0w0_8EwRvMCwy8SDz5Mp7JFz_s;-><init>(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;Landroid/widget/Button;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 297
    new-instance v5, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$CdxKRnNdPL13jXKw_7lIxZWyqWE;

    invoke-direct {v5, p0, v3}, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$ExtraKeysView$CdxKRnNdPL13jXKw_7lIxZWyqWE;-><init>(Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView;Lcom/termux/app/terminal/io/extrakeys/ExtraKeyButton;)V

    invoke-virtual {v4, v5}, Landroid/widget/Button;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 369
    new-instance v3, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v3}, Landroid/widget/GridLayout$LayoutParams;-><init>()V

    .line 370
    iput v0, v3, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 371
    iput v0, v3, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 372
    invoke-virtual {v3, v0, v0, v0, v0}, Landroid/widget/GridLayout$LayoutParams;->setMargins(IIII)V

    .line 373
    sget-object v5, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    const/high16 v6, 0x3f800000    # 1.0f

    invoke-static {v2, v5, v6}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    iput-object v5, v3, Landroid/widget/GridLayout$LayoutParams;->columnSpec:Landroid/widget/GridLayout$Spec;

    .line 374
    sget-object v5, Landroid/widget/GridLayout;->FILL:Landroid/widget/GridLayout$Alignment;

    invoke-static {v1, v5, v6}, Landroid/widget/GridLayout;->spec(ILandroid/widget/GridLayout$Alignment;F)Landroid/widget/GridLayout$Spec;

    move-result-object v5

    iput-object v5, v3, Landroid/widget/GridLayout$LayoutParams;->rowSpec:Landroid/widget/GridLayout$Spec;

    .line 375
    invoke-virtual {v4, v3}, Landroid/widget/Button;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 377
    invoke-virtual {p0, v4}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_5
    return-void
.end method
