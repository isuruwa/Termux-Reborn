.class public final Lcom/termux/terminal/TerminalRow;
.super Ljava/lang/Object;
.source "TerminalRow.java"


# instance fields
.field private final mColumns:I

.field mHasNonOneWidthOrSurrogateChars:Z

.field mLineWrap:Z

.field private mSpaceUsed:S

.field final mStyle:[J

.field public mText:[C


# direct methods
.method public constructor <init>(IJ)V
    .locals 2

    .line 28
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    iput p1, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    int-to-float v0, p1

    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    .line 30
    new-array v0, v0, [C

    iput-object v0, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 31
    new-array p1, p1, [J

    iput-object p1, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    .line 32
    invoke-virtual {p0, p2, p3}, Lcom/termux/terminal/TerminalRow;->clear(J)V

    return-void
.end method

.method private wideDisplayCharacterStartingAt(I)Z
    .locals 6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    .line 105
    :goto_0
    iget-short v3, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    if-ge v1, v3, :cond_3

    .line 106
    iget-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v4, v1, 0x1

    aget-char v1, v3, v1

    .line 107
    invoke-static {v1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v5, v4, 0x1

    aget-char v3, v3, v4

    invoke-static {v1, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v1

    move v4, v5

    .line 108
    :cond_0
    invoke-static {v1}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v1

    if-lez v1, :cond_2

    if-ne v2, p1, :cond_1

    const/4 v3, 0x2

    if-ne v1, v3, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    add-int/2addr v2, v1

    if-le v2, p1, :cond_2

    return v0

    :cond_2
    move v1, v4

    goto :goto_0

    :cond_3
    return v0
.end method


# virtual methods
.method public clear(J)V
    .locals 2

    .line 119
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    const/16 v1, 0x20

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([CC)V

    .line 120
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    invoke-static {v0, p1, p2}, Ljava/util/Arrays;->fill([JJ)V

    .line 121
    iget p1, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    int-to-short p1, p1

    iput-short p1, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    const/4 p1, 0x0

    .line 122
    iput-boolean p1, p0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    return-void
.end method

.method public copyInterval(Lcom/termux/terminal/TerminalRow;III)V
    .locals 9

    .line 37
    iget-boolean v0, p0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    iget-boolean v1, p1, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    or-int/2addr v0, v1

    iput-boolean v0, p0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    .line 38
    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v0

    .line 39
    invoke-virtual {p1, p3}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result p3

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p2, :cond_0

    add-int/lit8 v3, p2, -0x1

    .line 40
    invoke-direct {p1, v3}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v2

    goto :goto_0

    :cond_0
    move v3, v1

    .line 41
    :goto_0
    iget-object v4, p1, Lcom/termux/terminal/TerminalRow;->mText:[C

    if-ne p0, p1, :cond_1

    array-length v5, v4

    invoke-static {v4, v5}, Ljava/util/Arrays;->copyOf([CI)[C

    move-result-object v4

    :cond_1
    move v5, v1

    :goto_1
    if-ge v0, p3, :cond_5

    .line 44
    aget-char v6, v4, v0

    .line 45
    invoke-static {v6}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v7

    if-eqz v7, :cond_2

    add-int/lit8 v0, v0, 0x1

    aget-char v7, v4, v0

    invoke-static {v6, v7}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v6

    :cond_2
    if-eqz v3, :cond_3

    const/16 v6, 0x20

    move v3, v1

    .line 51
    :cond_3
    invoke-static {v6}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v7

    if-lez v7, :cond_4

    add-int/2addr p4, v5

    add-int/2addr p2, v5

    move v5, v7

    .line 57
    :cond_4
    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v7

    invoke-virtual {p0, p4, v6, v7, v8}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    add-int/2addr v0, v2

    goto :goto_1

    :cond_5
    return-void
.end method

.method public findStartOfColumn(I)I
    .locals 6

    .line 67
    iget v0, p0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    if-ne p1, v0, :cond_0

    invoke-virtual {p0}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result p1

    return p1

    :cond_0
    const/4 v0, 0x0

    move v1, v0

    .line 73
    :goto_0
    iget-object v2, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v3, v0, 0x1

    aget-char v2, v2, v0

    .line 74
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 75
    iget-object v4, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v5, v3, 0x1

    aget-char v3, v4, v3

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    move v3, v5

    .line 76
    :cond_1
    invoke-static {v2}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v2

    if-lez v2, :cond_5

    add-int/2addr v1, v2

    if-ne v1, p1, :cond_4

    .line 80
    :goto_1
    iget-short p1, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    if-ge v3, p1, :cond_3

    .line 82
    iget-object p1, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char p1, p1, v3

    invoke-static {p1}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 83
    iget-object p1, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v0, p1, v3

    add-int/lit8 v1, v3, 0x1

    aget-char p1, p1, v1

    invoke-static {v0, p1}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result p1

    invoke-static {p1}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result p1

    if-gtz p1, :cond_3

    add-int/lit8 v3, v3, 0x2

    goto :goto_1

    .line 88
    :cond_2
    iget-object p1, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char p1, p1, v3

    invoke-static {p1}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result p1

    if-gtz p1, :cond_3

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_3
    return v3

    :cond_4
    if-le v1, p1, :cond_5

    return v0

    :cond_5
    move v0, v3

    goto :goto_0
.end method

.method public getSpaceUsed()I
    .locals 1

    .line 62
    iget-short v0, p0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    return v0
.end method

.method public final getStyle(I)J
    .locals 3

    .line 244
    iget-object v0, p0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    aget-wide v1, v0, p1

    return-wide v1
.end method

.method isBlank()Z
    .locals 5

    .line 238
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 239
    iget-object v3, p0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v3, v3, v2

    const/16 v4, 0x20

    if-eq v3, v4, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method public setChar(IIJ)V
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    move-wide/from16 v2, p3

    .line 127
    iget-object v4, v0, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    aput-wide v2, v4, p1

    .line 129
    invoke-static/range {p2 .. p2}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v4

    .line 132
    iget-boolean v5, v0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    const/4 v6, 0x1

    if-nez v5, :cond_2

    const/high16 v5, 0x10000

    if-ge v1, v5, :cond_1

    if-eq v4, v6, :cond_0

    goto :goto_0

    .line 136
    :cond_0
    iget-object v2, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    int-to-char v1, v1

    aput-char v1, v2, p1

    return-void

    .line 134
    :cond_1
    :goto_0
    iput-boolean v6, v0, Lcom/termux/terminal/TerminalRow;->mHasNonOneWidthOrSurrogateChars:Z

    :cond_2
    const/4 v5, 0x0

    if-gtz v4, :cond_3

    move v7, v6

    goto :goto_1

    :cond_3
    move v7, v5

    :goto_1
    if-lez p1, :cond_4

    add-int/lit8 v8, p1, -0x1

    .line 143
    invoke-direct {v0, v8}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v8

    if-eqz v8, :cond_4

    move v8, v6

    goto :goto_2

    :cond_4
    move v8, v5

    :goto_2
    const/16 v9, 0x20

    const/4 v10, 0x2

    if-eqz v7, :cond_5

    if-eqz v8, :cond_8

    add-int/lit8 v2, p1, -0x1

    goto :goto_4

    :cond_5
    if-eqz v8, :cond_6

    add-int/lit8 v8, p1, -0x1

    .line 150
    invoke-virtual {v0, v8, v9, v2, v3}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    :cond_6
    if-ne v4, v10, :cond_7

    add-int/lit8 v8, p1, 0x1

    .line 152
    invoke-direct {v0, v8}, Lcom/termux/terminal/TerminalRow;->wideDisplayCharacterStartingAt(I)Z

    move-result v8

    if-eqz v8, :cond_7

    move v8, v6

    goto :goto_3

    :cond_7
    move v8, v5

    :goto_3
    if-eqz v8, :cond_8

    add-int/lit8 v8, p1, 0x1

    .line 153
    invoke-virtual {v0, v8, v9, v2, v3}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    :cond_8
    move/from16 v2, p1

    .line 156
    :goto_4
    iget-object v3, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 157
    invoke-virtual {v0, v2}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v8

    .line 158
    invoke-static {v3, v8}, Lcom/termux/terminal/WcWidth;->width([CI)I

    move-result v11

    add-int v12, v2, v11

    .line 162
    iget v13, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    if-ge v12, v13, :cond_9

    .line 163
    invoke-virtual {v0, v12}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v12

    goto :goto_5

    .line 166
    :cond_9
    iget-short v12, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    :goto_5
    sub-int/2addr v12, v8

    .line 170
    invoke-static/range {p2 .. p2}, Ljava/lang/Character;->charCount(I)I

    move-result v13

    if-eqz v7, :cond_a

    add-int/2addr v13, v12

    :cond_a
    add-int v14, v8, v12

    add-int v15, v8, v13

    sub-int/2addr v13, v12

    if-lez v13, :cond_c

    .line 185
    iget-short v9, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int v6, v9, v14

    add-int/2addr v9, v13

    .line 186
    array-length v10, v3

    if-le v9, v10, :cond_b

    .line 188
    array-length v9, v3

    iget v10, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/2addr v9, v10

    new-array v9, v9, [C

    .line 189
    invoke-static {v3, v5, v9, v5, v14}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 190
    invoke-static {v3, v14, v9, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 191
    iput-object v9, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    move-object v3, v9

    goto :goto_6

    .line 193
    :cond_b
    invoke-static {v3, v14, v3, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    :cond_c
    if-gez v13, :cond_d

    .line 197
    iget-short v6, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v6, v14

    invoke-static {v3, v14, v3, v15, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 199
    :cond_d
    :goto_6
    iget-short v6, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int/2addr v6, v13

    int-to-short v6, v6

    iput-short v6, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    if-eqz v7, :cond_e

    goto :goto_7

    :cond_e
    move v12, v5

    :goto_7
    add-int/2addr v8, v12

    .line 203
    invoke-static {v1, v3, v8}, Ljava/lang/Character;->toChars(I[CI)I

    const/4 v1, 0x2

    if-ne v11, v1, :cond_11

    const/4 v1, 0x1

    if-ne v4, v1, :cond_10

    .line 207
    iget-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    add-int/lit8 v2, v1, 0x1

    array-length v4, v3

    if-le v2, v4, :cond_f

    .line 208
    array-length v1, v3

    iget v2, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/2addr v1, v2

    new-array v1, v1, [C

    .line 209
    invoke-static {v3, v5, v1, v5, v15}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    add-int/lit8 v2, v15, 0x1

    .line 210
    iget-short v4, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v4, v15

    invoke-static {v3, v15, v1, v2, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 211
    iput-object v1, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    move-object v3, v1

    goto :goto_8

    :cond_f
    add-int/lit8 v2, v15, 0x1

    sub-int/2addr v1, v15

    .line 213
    invoke-static {v3, v15, v3, v2, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :goto_8
    const/16 v1, 0x20

    .line 215
    aput-char v1, v3, v15

    .line 217
    iget-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    const/4 v5, 0x1

    add-int/2addr v1, v5

    int-to-short v1, v1

    iput-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_b

    :cond_10
    move v5, v1

    goto :goto_9

    :cond_11
    const/4 v5, 0x1

    :goto_9
    if-ne v11, v5, :cond_15

    const/4 v1, 0x2

    if-ne v4, v1, :cond_15

    .line 219
    iget v4, v0, Lcom/termux/terminal/TerminalRow;->mColumns:I

    add-int/lit8 v6, v4, -0x1

    if-eq v2, v6, :cond_14

    sub-int/2addr v4, v1

    if-ne v2, v4, :cond_12

    int-to-short v1, v15

    .line 223
    iput-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_b

    .line 227
    :cond_12
    iget-object v2, v0, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v2, v2, v15

    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v2

    if-eqz v2, :cond_13

    move v6, v1

    goto :goto_a

    :cond_13
    move v6, v5

    :goto_a
    add-int/2addr v6, v15

    sub-int v1, v6, v15

    .line 231
    iget-short v2, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v2, v6

    invoke-static {v3, v6, v3, v15, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 232
    iget-short v2, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    sub-int/2addr v2, v1

    int-to-short v1, v2

    iput-short v1, v0, Lcom/termux/terminal/TerminalRow;->mSpaceUsed:S

    goto :goto_b

    .line 220
    :cond_14
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot put wide character in last column"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_15
    :goto_b
    return-void
.end method
