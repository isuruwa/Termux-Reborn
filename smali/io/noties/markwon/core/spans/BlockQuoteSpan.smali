.class public Lio/noties/markwon/core/spans/BlockQuoteSpan;
.super Ljava/lang/Object;
.source "BlockQuoteSpan.java"

# interfaces
.implements Landroid/text/style/LeadingMarginSpan;


# instance fields
.field private final paint:Landroid/graphics/Paint;

.field private final rect:Landroid/graphics/Rect;

.field private final theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method public constructor <init>(Lio/noties/markwon/core/MarkwonTheme;)V
    .locals 1

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 16
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->rect()Landroid/graphics/Rect;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->rect:Landroid/graphics/Rect;

    .line 17
    invoke-static {}, Lio/noties/markwon/core/spans/ObjectsPool;->paint()Landroid/graphics/Paint;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->paint:Landroid/graphics/Paint;

    .line 20
    iput-object p1, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    return-void
.end method


# virtual methods
.method public drawLeadingMargin(Landroid/graphics/Canvas;Landroid/graphics/Paint;IIIIILjava/lang/CharSequence;IIZLandroid/text/Layout;)V
    .locals 0

    .line 43
    iget-object p6, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {p6}, Lio/noties/markwon/core/MarkwonTheme;->getBlockQuoteWidth()I

    move-result p6

    .line 45
    iget-object p8, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p8, p2}, Landroid/graphics/Paint;->set(Landroid/graphics/Paint;)V

    .line 47
    iget-object p2, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    iget-object p8, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p2, p8}, Lio/noties/markwon/core/MarkwonTheme;->applyBlockQuoteStyle(Landroid/graphics/Paint;)V

    mul-int/2addr p4, p6

    add-int/2addr p3, p4

    add-int/2addr p4, p3

    .line 54
    invoke-static {p3, p4}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 55
    invoke-static {p3, p4}, Ljava/lang/Math;->max(II)I

    move-result p3

    .line 58
    iget-object p4, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->rect:Landroid/graphics/Rect;

    invoke-virtual {p4, p2, p5, p3, p7}, Landroid/graphics/Rect;->set(IIII)V

    .line 60
    iget-object p2, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->rect:Landroid/graphics/Rect;

    iget-object p3, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->paint:Landroid/graphics/Paint;

    invoke-virtual {p1, p2, p3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V

    return-void
.end method

.method public getLeadingMargin(Z)I
    .locals 0

    .line 25
    iget-object p1, p0, Lio/noties/markwon/core/spans/BlockQuoteSpan;->theme:Lio/noties/markwon/core/MarkwonTheme;

    invoke-virtual {p1}, Lio/noties/markwon/core/MarkwonTheme;->getBlockMargin()I

    move-result p1

    return p1
.end method
