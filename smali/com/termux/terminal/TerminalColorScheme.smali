.class public final Lcom/termux/terminal/TerminalColorScheme;
.super Ljava/lang/Object;
.source "TerminalColorScheme.java"


# static fields
.field private static final DEFAULT_COLORSCHEME:[I


# instance fields
.field public final mDefaultColors:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x103

    new-array v0, v0, [I

    .line 15
    fill-array-data v0, :array_0

    sput-object v0, Lcom/termux/terminal/TerminalColorScheme;->DEFAULT_COLORSCHEME:[I

    return-void

    :array_0
    .array-data 4
        -0x1000000
        -0x330000
        -0xff3300
        -0x323300
        -0x9b6a13
        -0x32ff33
        -0xff3233
        -0x1a1a1b
        -0x808081
        -0x10000
        -0xff0100
        -0x100
        -0xa3a301
        -0xff01
        -0xff0001
        -0x1
        -0x1000000
        -0xffffa1
        -0xffff79
        -0xffff51
        -0xffff29
        -0xffff01
        -0xffa100
        -0xffa0a1
        -0xffa079
        -0xffa051
        -0xffa029
        -0xffa001
        -0xff7900
        -0xff78a1
        -0xff7879
        -0xff7851
        -0xff7829
        -0xff7801
        -0xff5100
        -0xff50a1
        -0xff5079
        -0xff5051
        -0xff5029
        -0xff5001
        -0xff2900
        -0xff28a1
        -0xff2879
        -0xff2851
        -0xff2829
        -0xff2801
        -0xff0100
        -0xff00a1
        -0xff0079
        -0xff0051
        -0xff0029
        -0xff0001
        -0xa10000
        -0xa0ffa1
        -0xa0ff79
        -0xa0ff51
        -0xa0ff29
        -0xa0ff01
        -0xa0a100
        -0xa0a0a1
        -0xa0a079
        -0xa0a051
        -0xa0a029
        -0xa0a001
        -0xa07900
        -0xa078a1
        -0xa07879
        -0xa07851
        -0xa07829
        -0xa07801
        -0xa05100
        -0xa050a1
        -0xa05079
        -0xa05051
        -0xa05029
        -0xa05001
        -0xa02900
        -0xa028a1
        -0xa02879
        -0xa02851
        -0xa02829
        -0xa02801
        -0xa00100
        -0xa000a1
        -0xa00079
        -0xa00051
        -0xa00029
        -0xa00001
        -0x790000
        -0x78ffa1
        -0x78ff79
        -0x78ff51
        -0x78ff29
        -0x78ff01
        -0x78a100
        -0x78a0a1
        -0x78a079
        -0x78a051
        -0x78a029
        -0x78a001
        -0x787900
        -0x7878a1
        -0x787879
        -0x787851
        -0x787829
        -0x787801
        -0x785100
        -0x7850a1
        -0x785079
        -0x785051
        -0x785029
        -0x785001
        -0x782900
        -0x7828a1
        -0x782879
        -0x782851
        -0x782829
        -0x782801
        -0x780100
        -0x7800a1
        -0x780079
        -0x780051
        -0x780029
        -0x780001
        -0x510000
        -0x50ffa1
        -0x50ff79
        -0x50ff51
        -0x50ff29
        -0x50ff01
        -0x50a100
        -0x50a0a1
        -0x50a079
        -0x50a051
        -0x50a029
        -0x50a001
        -0x507900
        -0x5078a1
        -0x507879
        -0x507851
        -0x507829
        -0x507801
        -0x505100
        -0x5050a1
        -0x505079
        -0x505051
        -0x505029
        -0x505001
        -0x502900
        -0x5028a1
        -0x502879
        -0x502851
        -0x502829
        -0x502801
        -0x500100
        -0x5000a1
        -0x500079
        -0x500051
        -0x500029
        -0x500001
        -0x290000
        -0x28ffa1
        -0x28ff79
        -0x28ff51
        -0x28ff29
        -0x28ff01
        -0x28a100
        -0x28a0a1
        -0x28a079
        -0x28a051
        -0x28a029
        -0x28a001
        -0x287900
        -0x2878a1
        -0x287879
        -0x287851
        -0x287829
        -0x287801
        -0x285100
        -0x2850a1
        -0x285079
        -0x285051
        -0x285029
        -0x285001
        -0x282900
        -0x2828a1
        -0x282879
        -0x282851
        -0x282829
        -0x282801
        -0x280100
        -0x2800a1
        -0x280079
        -0x280051
        -0x280029
        -0x280001
        -0x10000
        -0xffa1
        -0xff79
        -0xff51
        -0xff29
        -0xff01
        -0xa100
        -0xa0a1
        -0xa079
        -0xa051
        -0xa029
        -0xa001
        -0x7900
        -0x78a1
        -0x7879
        -0x7851
        -0x7829
        -0x7801
        -0x5100
        -0x50a1
        -0x5079
        -0x5051
        -0x5029
        -0x5001
        -0x2900
        -0x28a1
        -0x2879
        -0x2851
        -0x2829
        -0x2801
        -0x100
        -0xa1
        -0x79
        -0x51
        -0x29
        -0x1
        -0xf7f7f8
        -0xededee
        -0xe3e3e4
        -0xd9d9da
        -0xcfcfd0
        -0xc5c5c6
        -0xbbbbbc
        -0xb1b1b2
        -0xa7a7a8
        -0x9d9d9e
        -0x939394
        -0x89898a
        -0x7f7f80
        -0x757576
        -0x6b6b6c
        -0x616162
        -0x575758
        -0x4d4d4e
        -0x434344
        -0x39393a
        -0x2f2f30
        -0x252526
        -0x1b1b1c
        -0x111112
        -0x1
        -0x1000000
        -0x565557
    .end array-data
.end method

.method public constructor <init>()V
    .locals 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x103

    new-array v0, v0, [I

    .line 62
    iput-object v0, p0, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    .line 65
    invoke-direct {p0}, Lcom/termux/terminal/TerminalColorScheme;->reset()V

    return-void
.end method

.method private reset()V
    .locals 4

    .line 69
    sget-object v0, Lcom/termux/terminal/TerminalColorScheme;->DEFAULT_COLORSCHEME:[I

    iget-object v1, p0, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    const/4 v2, 0x0

    const/16 v3, 0x103

    invoke-static {v0, v2, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method


# virtual methods
.method public updateWith(Ljava/util/Properties;)V
    .locals 5

    .line 73
    invoke-direct {p0}, Lcom/termux/terminal/TerminalColorScheme;->reset()V

    .line 74
    invoke-virtual {p1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 76
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, "foreground"

    .line 79
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    const-string v3, "\'"

    if-eqz v2, :cond_0

    const/16 v2, 0x100

    goto :goto_1

    :cond_0
    const-string v2, "background"

    .line 81
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0x101

    goto :goto_1

    :cond_1
    const-string v2, "cursor"

    .line 83
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/16 v2, 0x102

    goto :goto_1

    :cond_2
    const-string v2, "color"

    .line 85
    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    const-string v4, "Invalid property: \'"

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    .line 87
    :try_start_0
    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 95
    :goto_1
    invoke-static {v0}, Lcom/termux/terminal/TerminalColors;->parse(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_3

    .line 99
    iget-object v0, p0, Lcom/termux/terminal/TerminalColorScheme;->mDefaultColors:[I

    aput v4, v0, v2

    goto :goto_0

    .line 97
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Property \'"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\' has invalid color: \'"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 89
    :catch_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-void
.end method
