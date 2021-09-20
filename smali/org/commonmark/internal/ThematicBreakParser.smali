.class public Lorg/commonmark/internal/ThematicBreakParser;
.super Lorg/commonmark/parser/block/AbstractBlockParser;
.source "ThematicBreakParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/commonmark/internal/ThematicBreakParser$Factory;
    }
.end annotation


# instance fields
.field private final block:Lorg/commonmark/node/ThematicBreak;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 7
    invoke-direct {p0}, Lorg/commonmark/parser/block/AbstractBlockParser;-><init>()V

    .line 9
    new-instance v0, Lorg/commonmark/node/ThematicBreak;

    invoke-direct {v0}, Lorg/commonmark/node/ThematicBreak;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/ThematicBreakParser;->block:Lorg/commonmark/node/ThematicBreak;

    return-void
.end method

.method static synthetic access$000(Ljava/lang/CharSequence;I)Z
    .locals 0

    .line 7
    invoke-static {p0, p1}, Lorg/commonmark/internal/ThematicBreakParser;->isThematicBreak(Ljava/lang/CharSequence;I)Z

    move-result p0

    return p0
.end method

.method private static isThematicBreak(Ljava/lang/CharSequence;I)Z
    .locals 7

    .line 45
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    move v3, v2

    move v4, v3

    :goto_0
    if-ge p1, v0, :cond_4

    .line 47
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v5

    const/16 v6, 0x9

    if-eq v5, v6, :cond_3

    const/16 v6, 0x20

    if-eq v5, v6, :cond_3

    const/16 v6, 0x2a

    if-eq v5, v6, :cond_2

    const/16 v6, 0x2d

    if-eq v5, v6, :cond_1

    const/16 v6, 0x5f

    if-eq v5, v6, :cond_0

    return v1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    add-int/lit8 v4, v4, 0x1

    :cond_3
    :goto_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0

    :cond_4
    const/4 p0, 0x3

    if-lt v2, p0, :cond_5

    if-nez v3, :cond_5

    if-eqz v4, :cond_7

    :cond_5
    if-lt v3, p0, :cond_6

    if-nez v2, :cond_6

    if-eqz v4, :cond_7

    :cond_6
    if-lt v4, p0, :cond_8

    if-nez v2, :cond_8

    if-nez v3, :cond_8

    :cond_7
    const/4 v1, 0x1

    :cond_8
    return v1
.end method


# virtual methods
.method public getBlock()Lorg/commonmark/node/Block;
    .locals 1

    .line 13
    iget-object v0, p0, Lorg/commonmark/internal/ThematicBreakParser;->block:Lorg/commonmark/node/ThematicBreak;

    return-object v0
.end method

.method public tryContinue(Lorg/commonmark/parser/block/ParserState;)Lorg/commonmark/parser/block/BlockContinue;
    .locals 0

    .line 19
    invoke-static {}, Lorg/commonmark/parser/block/BlockContinue;->none()Lorg/commonmark/parser/block/BlockContinue;

    move-result-object p1

    return-object p1
.end method
