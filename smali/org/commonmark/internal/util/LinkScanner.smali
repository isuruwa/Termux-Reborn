.class public Lorg/commonmark/internal/util/LinkScanner;
.super Ljava/lang/Object;
.source "LinkScanner.java"


# direct methods
.method public static scanLinkDestination(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 34
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lt p1, v0, :cond_0

    return v1

    .line 38
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x3c

    if-ne v0, v2, :cond_5

    :cond_1
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 39
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_4

    .line 40
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v3, 0xa

    if-eq v0, v3, :cond_4

    if-eq v0, v2, :cond_4

    const/16 v3, 0x3e

    if-eq v0, v3, :cond_3

    const/16 v3, 0x5c

    if-eq v0, v3, :cond_2

    goto :goto_0

    :cond_2
    add-int/lit8 v0, p1, 0x1

    .line 43
    invoke-static {p0, v0}, Lorg/commonmark/internal/util/Parsing;->isEscapable(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_1

    move p1, v0

    goto :goto_0

    :cond_3
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_4
    return v1

    .line 56
    :cond_5
    invoke-static {p0, p1}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkDestinationWithBalancedParens(Ljava/lang/CharSequence;I)I

    move-result p0

    return p0
.end method

.method private static scanLinkDestinationWithBalancedParens(Ljava/lang/CharSequence;I)I
    .locals 6

    const/4 v0, 0x0

    move v1, p1

    .line 113
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-ge v1, v2, :cond_8

    .line 114
    invoke-interface {p0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_6

    const/16 v4, 0x20

    if-eq v2, v4, :cond_6

    const/16 v5, 0x5c

    if-eq v2, v5, :cond_4

    const/16 v5, 0x28

    if-eq v2, v5, :cond_3

    const/16 v4, 0x29

    if-eq v2, v4, :cond_1

    .line 140
    invoke-static {v2}, Ljava/lang/Character;->isISOControl(C)Z

    move-result v2

    if-eqz v2, :cond_5

    if-eq v1, p1, :cond_0

    goto :goto_1

    :cond_0
    move v1, v3

    :goto_1
    return v1

    :cond_1
    if-nez v0, :cond_2

    return v1

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_3
    add-int/lit8 v0, v0, 0x1

    if-le v0, v4, :cond_5

    return v3

    :cond_4
    add-int/lit8 v2, v1, 0x1

    .line 120
    invoke-static {p0, v2}, Lorg/commonmark/internal/util/Parsing;->isEscapable(Ljava/lang/CharSequence;I)Z

    move-result v3

    if-eqz v3, :cond_5

    move v1, v2

    :cond_5
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_6
    if-eq v1, p1, :cond_7

    goto :goto_3

    :cond_7
    move v1, v3

    :goto_3
    return v1

    .line 146
    :cond_8
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method

.method public static scanLinkLabelContent(Ljava/lang/CharSequence;I)I
    .locals 2

    .line 11
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_1

    .line 12
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    return p1

    :pswitch_1
    add-int/lit8 v0, p1, 0x1

    .line 15
    invoke-static {p0, v0}, Lorg/commonmark/internal/util/Parsing;->isEscapable(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_0

    move p1, v0

    goto :goto_1

    :pswitch_2
    const/4 p0, -0x1

    return p0

    :cond_0
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 27
    :cond_1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x5b
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static scanLinkTitle(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 61
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, -0x1

    if-lt p1, v0, :cond_0

    return v1

    .line 66
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v2, 0x27

    const/16 v3, 0x22

    if-eq v0, v3, :cond_2

    if-eq v0, v2, :cond_3

    const/16 v2, 0x28

    if-eq v0, v2, :cond_1

    return v1

    :cond_1
    const/16 v2, 0x29

    goto :goto_0

    :cond_2
    move v2, v3

    :cond_3
    :goto_0
    add-int/lit8 p1, p1, 0x1

    .line 80
    invoke-static {p0, p1, v2}, Lorg/commonmark/internal/util/LinkScanner;->scanLinkTitleContent(Ljava/lang/CharSequence;IC)I

    move-result p1

    if-ne p1, v1, :cond_4

    return v1

    .line 85
    :cond_4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_6

    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-eq p0, v2, :cond_5

    goto :goto_1

    :cond_5
    add-int/lit8 p1, p1, 0x1

    return p1

    :cond_6
    :goto_1
    return v1
.end method

.method public static scanLinkTitleContent(Ljava/lang/CharSequence;IC)I
    .locals 3

    .line 94
    :goto_0
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ge p1, v0, :cond_3

    .line 95
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_0

    add-int/lit8 v1, p1, 0x1

    .line 96
    invoke-static {p0, v1}, Lorg/commonmark/internal/util/Parsing;->isEscapable(Ljava/lang/CharSequence;I)Z

    move-result v2

    if-eqz v2, :cond_0

    move p1, v1

    goto :goto_1

    :cond_0
    if-ne v0, p2, :cond_1

    return p1

    :cond_1
    const/16 v1, 0x29

    if-ne p2, v1, :cond_2

    const/16 v1, 0x28

    if-ne v0, v1, :cond_2

    const/4 p0, -0x1

    return p0

    :cond_2
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    .line 105
    :cond_3
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p0

    return p0
.end method
