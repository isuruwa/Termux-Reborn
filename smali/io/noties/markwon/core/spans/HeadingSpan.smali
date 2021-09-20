.class public Lio/noties/markwon/core/spans/HeadingSpan;
.super Landroid/text/style/MetricAffectingSpan;
.source "HeadingSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field private final level:I

.field private final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/Rect;

.field private final theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method public constructor <init>(Lio/noties/markwon/core/MarkwonTheme;I)V
    .locals 1

    .line 24
    invoke-direct {p0}, Landroid/text/style/MetricAffectingSpan;-><init>()V

    .line 20
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->rect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/HeadingSpan;->rect:Landroid/graphics/Rect;

    .line 21
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->paint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/HeadingSpan;->paint:Landroid/graphics/Paint;

    .line 25
    iput-object p1, p0, Lio/noties/markwon/core/spans/HeadingSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 26
    iput p2, p0, Lio/noties/markwon/core/spans/HeadingSpan;->level:I

    return-void
.end method

.method private apply(Landroid/text/TextPaint;)V
    .locals 2

    .line 40
    iget-object v0, p0, Lio/noties/markwon/core/spans/HeadingSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    iget v1, p0, Lio/noties/markwon/core/spans/HeadingSpan;->level:I

    invoke-virtual {v0, p1, v1}, Lio/noties/markwon/core/MarkwonTheme;->applyHeadingTextStyle(Landroid/graphics/Paint;I)V

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 1

    .line 52
    iget p5, p0, Lio/noties/markwon/core/spans/HeadingSpan;->level:I

    const/4 p6, 0x1

    if-eq p5, p6, :cond_0

    const/4 p6, 0x2

    if-ne p5, p6, :cond_2

    .line 53
    :cond_0
    invoke-static {p10, p8, p0}, Lio/noties/markwon/utils/LeadingMarginUtils;->selfEnd(ILjava/lang/CharSequence;Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_2

    .line 55
    iget-object p5, p0, Lio/noties/markwon/core/spans/HeadingSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p5, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 57
    iget-object p2, p0, Lio/noties/markwon/core/spans/HeadingSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    iget-object p5, p0, Lio/noties/markwon/core/spans/HeadingSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p5}, Lio/noties/markwon/core/MarkwonTheme;->applyHeadingBreakStyle(Landroid/graphics/Paint;)V

    .line 59
    iget-object p2, p0, Lio/noties/markwon/core/spans/HeadingSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2}, Landroid/graphics/Paint;->getStrokeWidth()F

    move-result p2

    const/4 p5, 0x0

    cmpl-float p5, p2, p5

    if-lez p5, :cond_2

    int-to-float p5, p7

    sub-float/2addr p5, p2

    const/high16 p2, 0x3f000000    # 0.5f

    add-float/2addr p5, p2

    float-to-int p2, p5

    if-lez p4, :cond_1

    .line 69
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p4

    goto :goto_0

    .line 71
    :cond_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p4

    sub-int p4, p3, p4

    move v0, p4

    move p4, p3

    move p3, v0

    .line 75
    :goto_0
    iget-object p5, p0, Lio/noties/markwon/core/spans/HeadingSpan;->rect:Landroid/graphics/Rect;

    invoke-virtual {p5, p3, p2, p4, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 76
    iget-object p2, p0, Lio/noties/markwon/core/spans/HeadingSpan;->rect:Landroid/graphics/Rect;

    iget-object p3, p0, Lio/noties/markwon/core/spans/HeadingSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    :cond_2
    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public updateDrawState(Landroid/text/TextPaint;)V
    .locals 0

    .line 36
    invoke-direct {p0, p1}, Lio/noties/markwon/core/spans/HeadingSpan;->apply(Landroid/text/TextPaint;)V

    return-void
.end method

.method public updateMeasureState(Landroid/text/TextPaint;)V
    .locals 0

    .line 31
    invoke-direct {p0, p1}, Lio/noties/markwon/core/spans/HeadingSpan;->apply(Landroid/text/TextPaint;)V

    return-void
.end method
