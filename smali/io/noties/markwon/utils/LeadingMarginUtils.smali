.class public abstract Lio/noties/markwon/utils/LeadingMarginUtils;
.super Ljava/lang/Object;
.source "LeadingMarginUtils.java"


# direct methods
.method public static selfEnd(ILjava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1

    .line 12
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/text/Spanned;

    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method public static selfStart(ILjava/lang/CharSequence;Ljava/lang/Object;)Z
    .locals 1

    .line 8
    instance-of v0, p1, Landroid/text/Spanned;

    if-eqz v0, :cond_0

    check-cast p1, Landroid/text/Spanned;

    invoke-interface {p1, p2}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    if-ne p1, p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
