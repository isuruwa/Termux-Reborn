.class public Lio/noties/markwon/SpannableBuilder;
.super Ljava/lang/Object;
.source "SpannableBuilder.java"

# interfaces
.implements Ljava/lang/Appendable;
.implements Ljava/lang/CharSequence;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/SpannableBuilder$SpannableStringBuilderReversed;,
        Lio/noties/markwon/SpannableBuilder$Span;
    }
.end annotation


# instance fields
.field private final builder:Ljava/lang/StringBuilder;

.field private final spans:Ljava/util/Deque;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Deque<",
            "Lio/noties/markwon/SpannableBuilder$Span;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    const-string v0, ""

    .line 63
    invoke-direct {p0, v0}, Lio/noties/markwon/SpannableBuilder;-><init>(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 2

    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    new-instance v0, Ljava/util/ArrayDeque;

    const/16 v1, 0x8

    invoke-direct {v0, v1}, Ljava/util/ArrayDeque;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/SpannableBuilder;->spans:Ljava/util/Deque;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    iput-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    .line 68
    invoke-direct {p0, v0, p1}, Lio/noties/markwon/SpannableBuilder;->copySpans(ILjava/lang/CharSequence;)V

    return-void
.end method

.method private copySpans(ILjava/lang/CharSequence;)V
    .locals 7

    .line 342
    instance-of v0, p2, Landroid/text/Spanned;

    if-eqz v0, :cond_2

    .line 344
    check-cast p2, Landroid/text/Spanned;

    .line 345
    instance-of v0, p2, Lio/noties/markwon/SpannableBuilder$SpannableStringBuilderReversed;

    .line 347
    invoke-interface {p2}, Landroid/text/Spanned;->length()I

    move-result v1

    const-class v2, Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-interface {p2, v3, v1, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 349
    array-length v2, v1

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-lez v2, :cond_2

    if-eqz v0, :cond_1

    add-int/lit8 v2, v2, -0x1

    :goto_1
    if-ltz v2, :cond_2

    .line 356
    aget-object v0, v1, v2

    .line 359
    invoke-interface {p2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    add-int/2addr v3, p1

    .line 360
    invoke-interface {p2, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v4, p1

    .line 361
    invoke-interface {p2, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v5

    .line 357
    invoke-virtual {p0, v0, v3, v4, v5}, Lio/noties/markwon/SpannableBuilder;->setSpan(Ljava/lang/Object;III)Lio/noties/markwon/SpannableBuilder;

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_1
    :goto_2
    if-ge v3, v2, :cond_2

    .line 367
    aget-object v0, v1, v3

    .line 370
    invoke-interface {p2, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v4

    add-int/2addr v4, p1

    .line 371
    invoke-interface {p2, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    add-int/2addr v5, p1

    .line 372
    invoke-interface {p2, v0}, Landroid/text/Spanned;->getSpanFlags(Ljava/lang/Object;)I

    move-result v6

    .line 368
    invoke-virtual {p0, v0, v4, v5, v6}, Lio/noties/markwon/SpannableBuilder;->setSpan(Ljava/lang/Object;III)Lio/noties/markwon/SpannableBuilder;

    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_2
    return-void
.end method

.method static isPositionValid(III)Z
    .locals 0

    if-le p2, p1, :cond_0

    if-ltz p1, :cond_0

    if-gt p2, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static setSpans(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V
    .locals 1

    if-eqz p1, :cond_1

    .line 38
    invoke-virtual {p0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v0

    invoke-static {v0, p2, p3}, Lio/noties/markwon/SpannableBuilder;->isPositionValid(III)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 44
    :cond_0
    invoke-static {p0, p1, p2, p3}, Lio/noties/markwon/SpannableBuilder;->setSpansInternal(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V

    :cond_1
    return-void
.end method

.method private static setSpansInternal(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V
    .locals 3

    if-eqz p1, :cond_1

    .line 416
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 417
    check-cast p1, [Ljava/lang/Object;

    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p1, v1

    .line 419
    invoke-static {p0, v2, p2, p3}, Lio/noties/markwon/SpannableBuilder;->setSpansInternal(Lio/noties/markwon/SpannableBuilder;Ljava/lang/Object;II)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    const/16 v0, 0x21

    .line 422
    invoke-virtual {p0, p1, p2, p3, v0}, Lio/noties/markwon/SpannableBuilder;->setSpan(Ljava/lang/Object;III)Lio/noties/markwon/SpannableBuilder;

    :cond_1
    return-void
.end method


# virtual methods
.method public append(C)Lio/noties/markwon/SpannableBuilder;
    .locals 1

    .line 86
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;)Lio/noties/markwon/SpannableBuilder;
    .locals 1

    .line 94
    invoke-virtual {p0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v0

    invoke-direct {p0, v0, p1}, Lio/noties/markwon/SpannableBuilder;->copySpans(ILjava/lang/CharSequence;)V

    .line 96
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/CharSequence;II)Lio/noties/markwon/SpannableBuilder;
    .locals 0

    .line 108
    invoke-interface {p1, p2, p3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 109
    invoke-virtual {p0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result p2

    invoke-direct {p0, p2, p1}, Lio/noties/markwon/SpannableBuilder;->copySpans(ILjava/lang/CharSequence;)V

    .line 111
    iget-object p2, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public append(Ljava/lang/String;)Lio/noties/markwon/SpannableBuilder;
    .locals 1

    .line 79
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-object p0
.end method

.method public bridge synthetic append(C)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lio/noties/markwon/SpannableBuilder;->append(C)Lio/noties/markwon/SpannableBuilder;

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1}, Lio/noties/markwon/SpannableBuilder;->append(Ljava/lang/CharSequence;)Lio/noties/markwon/SpannableBuilder;

    return-object p0
.end method

.method public bridge synthetic append(Ljava/lang/CharSequence;II)Ljava/lang/Appendable;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 27
    invoke-virtual {p0, p1, p2, p3}, Lio/noties/markwon/SpannableBuilder;->append(Ljava/lang/CharSequence;II)Lio/noties/markwon/SpannableBuilder;

    return-object p0
.end method

.method public charAt(I)C
    .locals 1

    .line 155
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result p1

    return p1
.end method

.method public getSpans(II)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/List<",
            "Lio/noties/markwon/SpannableBuilder$Span;",
            ">;"
        }
    .end annotation

    .line 219
    invoke-virtual {p0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v0

    .line 221
    invoke-static {v0, p1, p2}, Lio/noties/markwon/SpannableBuilder;->isPositionValid(III)Z

    move-result v1

    if-nez v1, :cond_0

    .line 223
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p1

    return-object p1

    :cond_0
    if-nez p1, :cond_1

    if-ne v0, p2, :cond_1

    .line 230
    new-instance p1, Ljava/util/ArrayList;

    iget-object p2, p0, Lio/noties/markwon/SpannableBuilder;->spans:Ljava/util/Deque;

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 231
    invoke-static {p1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    .line 232
    invoke-static {p1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 235
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 237
    iget-object v1, p0, Lio/noties/markwon/SpannableBuilder;->spans:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->descendingIterator()Ljava/util/Iterator;

    move-result-object v1

    .line 240
    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 241
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/noties/markwon/SpannableBuilder$Span;

    .line 245
    iget v3, v2, Lio/noties/markwon/SpannableBuilder$Span;->start:I

    if-lt v3, p1, :cond_3

    if-lt v3, p2, :cond_5

    :cond_3
    iget v4, v2, Lio/noties/markwon/SpannableBuilder$Span;->end:I

    if-gt v4, p2, :cond_4

    if-gt v4, p1, :cond_5

    :cond_4
    if-ge v3, p1, :cond_2

    if-le v4, p2, :cond_2

    .line 249
    :cond_5
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 253
    :cond_6
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public lastChar()C
    .locals 2

    .line 257
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lio/noties/markwon/SpannableBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public length()I
    .locals 1

    .line 150
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    return v0
.end method

.method public setSpan(Ljava/lang/Object;III)Lio/noties/markwon/SpannableBuilder;
    .locals 2

    .line 144
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->spans:Ljava/util/Deque;

    new-instance v1, Lio/noties/markwon/SpannableBuilder$Span;

    invoke-direct {v1, p1, p2, p3, p4}, Lio/noties/markwon/SpannableBuilder$Span;-><init>(Ljava/lang/Object;III)V

    invoke-interface {v0, v1}, Ljava/util/Deque;->push(Ljava/lang/Object;)V

    return-object p0
.end method

.method public spannableStringBuilder()Landroid/text/SpannableStringBuilder;
    .locals 6

    .line 318
    new-instance v0, Lio/noties/markwon/SpannableBuilder$SpannableStringBuilderReversed;

    iget-object v1, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-direct {v0, v1}, Lio/noties/markwon/SpannableBuilder$SpannableStringBuilderReversed;-><init>(Ljava/lang/CharSequence;)V

    .line 322
    iget-object v1, p0, Lio/noties/markwon/SpannableBuilder;->spans:Ljava/util/Deque;

    invoke-interface {v1}, Ljava/util/Deque;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/noties/markwon/SpannableBuilder$Span;

    .line 323
    iget-object v3, v2, Lio/noties/markwon/SpannableBuilder$Span;->what:Ljava/lang/Object;

    iget v4, v2, Lio/noties/markwon/SpannableBuilder$Span;->start:I

    iget v5, v2, Lio/noties/markwon/SpannableBuilder$Span;->end:I

    iget v2, v2, Lio/noties/markwon/SpannableBuilder$Span;->flags:I

    invoke-virtual {v0, v3, v4, v5, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method public subSequence(II)Ljava/lang/CharSequence;
    .locals 6

    .line 167
    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/SpannableBuilder;->getSpans(II)Ljava/util/List;

    move-result-object v0

    .line 168
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 169
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    goto :goto_1

    .line 173
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    iget-object v2, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    invoke-direct {v1, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 175
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result p2

    .line 180
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lio/noties/markwon/SpannableBuilder$Span;

    const/4 v3, 0x0

    .line 189
    iget v4, v2, Lio/noties/markwon/SpannableBuilder$Span;->start:I

    sub-int/2addr v4, p1

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    .line 190
    iget v4, v2, Lio/noties/markwon/SpannableBuilder$Span;->end:I

    iget v5, v2, Lio/noties/markwon/SpannableBuilder$Span;->start:I

    sub-int/2addr v4, v5

    add-int/2addr v4, v3

    invoke-static {p2, v4}, Ljava/lang/Math;->min(II)I

    move-result v4

    .line 192
    iget-object v5, v2, Lio/noties/markwon/SpannableBuilder$Span;->what:Ljava/lang/Object;

    iget v2, v2, Lio/noties/markwon/SpannableBuilder$Span;->flags:I

    invoke-virtual {v1, v5, v3, v4, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_0

    :cond_1
    move-object p1, v1

    :goto_1
    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 290
    iget-object v0, p0, Lio/noties/markwon/SpannableBuilder;->builder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
