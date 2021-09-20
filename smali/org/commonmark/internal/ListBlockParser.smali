.class public Lorg/commonmark/internal/ListBlockParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "ListBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/ListBlockParser$ListMarkerData;,
        Lorg/commonmark/internal/ListBlockParser$ListData;,
        Lorg/commonmark/internal/ListBlockParser$Factory;
    }
.end annotation


# instance fields
.field private final block:Lorg/commonmark/node/ListBlock;

.field private hadBlankLine:Z

.field private linesAfterBlank:I


# direct methods
.method public constructor <init>(Lorg/commonmark/node/ListBlock;)V
    .locals 0

    .line 14
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 15
    iput-object p1, p0, Lorg/commonmark/internal/ListBlockParser;->block:Lorg/commonmark/node/ListBlock;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/CharSequence;IIZ)Lorg/commonmark/internal/ListBlockParser$ListData;
    .locals 0

    .line 7
    invoke-static {p0, p1, p2, p3}, Lorg/commonmark/internal/ListBlockParser;->parseList(Ljava/lang/CharSequence;IIZ)Lorg/commonmark/internal/ListBlockParser$ListData;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lorg/commonmark/node/ListBlock;Lorg/commonmark/node/ListBlock;)Z
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lorg/commonmark/internal/ListBlockParser;->listsMatch(Lorg/commonmark/node/ListBlock;Lorg/commonmark/node/ListBlock;)Z

    move-result p0

    return p0
.end method

.method private static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
    .locals 0

    if-nez p0, :cond_1

    if-nez p1, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_0

    .line 199
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p0

    :goto_0
    return p0
.end method

.method private static isSpaceTabOrEnd(Ljava/lang/CharSequence;I)Z
    .locals 2

    .line 171
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge p1, v0, :cond_0

    .line 172
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    const/16 p1, 0x9

    if-eq p0, p1, :cond_0

    const/16 p1, 0x20

    if-eq p0, p1, :cond_0

    const/4 p0, 0x0

    return p0

    :cond_0
    return v1
.end method

.method private static listsMatch(Lorg/commonmark/node/ListBlock;Lorg/commonmark/node/ListBlock;)Z
    .locals 1

    .line 190
    instance-of v0, p0, Lorg/commonmark/node/BulletList;

    if-eqz v0, :cond_0

    instance-of v0, p1, Lorg/commonmark/node/BulletList;

    if-eqz v0, :cond_0

    .line 191
    check-cast p0, Lorg/commonmark/node/BulletList;

    invoke-virtual {p0}, Lorg/commonmark/node/BulletList;->getBulletMarker()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    check-cast p1, Lorg/commonmark/node/BulletList;

    invoke-virtual {p1}, Lorg/commonmark/node/BulletList;->getBulletMarker()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/commonmark/internal/ListBlockParser;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    .line 192
    :cond_0
    instance-of v0, p0, Lorg/commonmark/node/OrderedList;

    if-eqz v0, :cond_1

    instance-of v0, p1, Lorg/commonmark/node/OrderedList;

    if-eqz v0, :cond_1

    .line 193
    check-cast p0, Lorg/commonmark/node/OrderedList;

    invoke-virtual {p0}, Lorg/commonmark/node/OrderedList;->getDelimiter()C

    move-result p0

    invoke-static {p0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p0

    check-cast p1, Lorg/commonmark/node/OrderedList;

    invoke-virtual {p1}, Lorg/commonmark/node/OrderedList;->getDelimiter()C

    move-result p1

    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    invoke-static {p0, p1}, Lorg/commonmark/internal/ListBlockParser;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    return p0

    :cond_1
    const/4 p0, 0x0

    return p0
.end method

.method private static parseList(Ljava/lang/CharSequence;IIZ)Lorg/commonmark/internal/ListBlockParser$ListData;
    .locals 8

    .line 63
    invoke-static {p0, p1}, Lorg/commonmark/internal/ListBlockParser;->parseListMarker(Ljava/lang/CharSequence;I)Lorg/commonmark/internal/ListBlockParser$ListMarkerData;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 67
    :cond_0
    iget-object v2, v0, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;->listBlock:Lorg/commonmark/node/ListBlock;

    .line 69
    iget v0, v0, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;->indexAfterMarker:I

    sub-int p1, v0, p1

    add-int/2addr p2, p1

    const/4 p1, 0x0

    .line 78
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    move v4, p2

    :goto_0
    const/4 v5, 0x1

    if-ge v0, v3, :cond_3

    .line 80
    invoke-interface {p0, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x9

    if-ne v6, v7, :cond_1

    .line 82
    invoke-static {v4}, Lorg/commonmark/internal/util/Parsing;->columnsToNextTabStop(I)I

    move-result v5

    add-int/2addr v4, v5

    goto :goto_1

    :cond_1
    const/16 v7, 0x20

    if-ne v6, v7, :cond_2

    add-int/lit8 v4, v4, 0x1

    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move p1, v5

    :cond_3
    if-eqz p3, :cond_5

    .line 93
    instance-of p0, v2, Lorg/commonmark/node/OrderedList;

    if-eqz p0, :cond_4

    move-object p0, v2

    check-cast p0, Lorg/commonmark/node/OrderedList;

    invoke-virtual {p0}, Lorg/commonmark/node/OrderedList;->getStartNumber()I

    move-result p0

    if-eq p0, v5, :cond_4

    return-object v1

    :cond_4
    if-nez p1, :cond_5

    return-object v1

    :cond_5
    if-eqz p1, :cond_6

    sub-int p0, v4, p2

    .line 102
    sget p1, Lorg/commonmark/internal/util/Parsing;->CODE_BLOCK_INDENT:I

    if-le p0, p1, :cond_7

    :cond_6
    add-int/lit8 v4, p2, 0x1

    .line 107
    :cond_7
    new-instance p0, Lorg/commonmark/internal/ListBlockParser$ListData;

    invoke-direct {p0, v2, v4}, Lorg/commonmark/internal/ListBlockParser$ListData;-><init>(Lorg/commonmark/node/ListBlock;I)V

    return-object p0
.end method

.method private static parseListMarker(Ljava/lang/CharSequence;I)Lorg/commonmark/internal/ListBlockParser$ListMarkerData;
    .locals 2

    .line 111
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x2a

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2b

    if-eq v0, v1, :cond_0

    const/16 v1, 0x2d

    if-eq v0, v1, :cond_0

    .line 125
    invoke-static {p0, p1}, Lorg/commonmark/internal/ListBlockParser;->parseOrderedList(Ljava/lang/CharSequence;I)Lorg/commonmark/internal/ListBlockParser$ListMarkerData;

    move-result-object p0

    return-object p0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    .line 117
    invoke-static {p0, p1}, Lorg/commonmark/internal/ListBlockParser;->isSpaceTabOrEnd(Ljava/lang/CharSequence;I)Z

    move-result p0

    if-eqz p0, :cond_1

    .line 118
    new-instance p0, Lorg/commonmark/node/BulletList;

    invoke-direct {p0}, Lorg/commonmark/node/BulletList;-><init>()V

    .line 119
    invoke-virtual {p0, v0}, Lorg/commonmark/node/BulletList;->setBulletMarker(C)V

    .line 120
    new-instance v0, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;

    invoke-direct {v0, p0, p1}, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;-><init>(Lorg/commonmark/node/ListBlock;I)V

    return-object v0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method private static parseOrderedList(Ljava/lang/CharSequence;I)Lorg/commonmark/internal/ListBlockParser$ListMarkerData;
    .locals 6

    .line 133
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, p1

    :goto_0
    const/4 v3, 0x0

    if-ge v2, v0, :cond_2

    .line 135
    invoke-interface {p0, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x29

    if-eq v4, v5, :cond_1

    const/16 v5, 0x2e

    if-eq v4, v5, :cond_1

    packed-switch v4, :pswitch_data_0

    return-object v3

    :pswitch_0
    add-int/lit8 v1, v1, 0x1

    const/16 v4, 0x9

    if-le v1, v4, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    if-lt v1, v0, :cond_2

    add-int/lit8 v0, v2, 0x1

    .line 154
    invoke-static {p0, v0}, Lorg/commonmark/internal/ListBlockParser;->isSpaceTabOrEnd(Ljava/lang/CharSequence;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    invoke-interface {p0, p1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p0

    invoke-interface {p0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object p0

    .line 156
    new-instance p1, Lorg/commonmark/node/OrderedList;

    invoke-direct {p1}, Lorg/commonmark/node/OrderedList;-><init>()V

    .line 157
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p0

    invoke-virtual {p1, p0}, Lorg/commonmark/node/OrderedList;->setStartNumber(I)V

    .line 158
    invoke-virtual {p1, v4}, Lorg/commonmark/node/OrderedList;->setDelimiter(C)V

    .line 159
    new-instance p0, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;

    invoke-direct {p0, p1, v0}, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;-><init>(Lorg/commonmark/node/ListBlock;I)V

    return-object p0

    :cond_2
    return-object v3

    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public canContain(Lorg/commonmark/node/Block;)Z
    .locals 2

    .line 25
    instance-of p1, p1, Lorg/commonmark/node/ListItem;

    const/4 v0, 0x0

    if-eqz p1, :cond_1

    .line 30
    iget-boolean p1, p0, Lorg/commonmark/internal/ListBlockParser;->hadBlankLine:Z

    const/4 v1, 0x1

    if-eqz p1, :cond_0

    iget p1, p0, Lorg/commonmark/internal/ListBlockParser;->linesAfterBlank:I

    if-ne p1, v1, :cond_0

    .line 31
    iget-object p1, p0, Lorg/commonmark/internal/ListBlockParser;->block:Lorg/commonmark/node/ListBlock;

    invoke-virtual {p1, v0}, Lorg/commonmark/node/ListBlock;->setTight(Z)V

    .line 32
    iput-boolean v0, p0, Lorg/commonmark/internal/ListBlockParser;->hadBlankLine:Z

    :cond_0
    return v1

    :cond_1
    return v0
.end method

.method public getBlock()Lorg/commonmark/node/Block;
    .locals 1

    .line 42
    iget-object v0, p0, Lorg/commonmark/internal/ListBlockParser;->block:Lorg/commonmark/node/ListBlock;

    return-object v0
.end method

.method public isContainer()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .locals 2

    .line 47
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->isBlank()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 48
    iput-boolean v1, p0, Lorg/commonmark/internal/ListBlockParser;->hadBlankLine:Z

    const/4 v0, 0x0

    .line 49
    iput v0, p0, Lorg/commonmark/internal/ListBlockParser;->linesAfterBlank:I

    goto :goto_0

    .line 50
    :cond_0
    iget-boolean v0, p0, Lorg/commonmark/internal/ListBlockParser;->hadBlankLine:Z

    if-eqz v0, :cond_1

    .line 51
    iget v0, p0, Lorg/commonmark/internal/ListBlockParser;->linesAfterBlank:I

    add-int/2addr v0, v1

    iput v0, p0, Lorg/commonmark/internal/ListBlockParser;->linesAfterBlank:I

    .line 55
    :cond_1
    :goto_0
    invoke-interface {p1}, Lorg/commonmark/parser/block/ParserState;->getIndex()I

    move-result p1

    invoke-static {p1}, Lorg/commonmark/parser/block/BlockContinue;->atIndex(I)Lorg/commonmark/parser/block/BlockContinue;

    move-result-object p1

    return-object p1
.end method
