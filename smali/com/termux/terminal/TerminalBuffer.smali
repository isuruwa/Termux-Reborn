.class public final Lcom/termux/terminal/TerminalBuffer;
.super Ljava/lang/Object;
.source "TerminalBuffer.java"


# instance fields
.field private mActiveTranscriptRows:I

.field mColumns:I

.field mLines:[Lcom/termux/terminal/TerminalRow;

.field private mScreenFirstRow:I

.field mScreenRows:I

.field mTotalRows:I


# direct methods
.method public constructor <init>(III)V
    .locals 8

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 19
    iput v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 21
    iput v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 32
    iput p1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    .line 33
    iput p2, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    .line 34
    iput p3, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    .line 35
    new-array p2, p2, [Lcom/termux/terminal/TerminalRow;

    iput-object p2, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    .line 37
    sget-wide v6, Lcom/termux/terminal/TextStyle;->NORMAL:J

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/16 v5, 0x20

    move-object v0, p0

    move v3, p1

    move v4, p3

    invoke-virtual/range {v0 .. v7}, Lcom/termux/terminal/TerminalBuffer;->blockSet(IIIIIJ)V

    return-void
.end method

.method private blockCopyLinesDown(II)V
    .locals 5

    if-nez p2, :cond_0

    return-void

    .line 323
    :cond_0
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    add-int/lit8 p2, p2, -0x1

    .line 327
    iget-object v1, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    add-int v2, p1, p2

    add-int/lit8 v2, v2, 0x1

    rem-int/2addr v2, v0

    aget-object v1, v1, v2

    :goto_0
    if-ltz p2, :cond_1

    .line 330
    iget-object v2, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    add-int v3, p1, p2

    add-int/lit8 v4, v3, 0x1

    rem-int/2addr v4, v0

    rem-int/2addr v3, v0

    aget-object v3, v2, v3

    aput-object v3, v2, v4

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 332
    :cond_1
    iget-object p2, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    rem-int/2addr p1, v0

    aput-object v1, p2, p1

    return-void
.end method


# virtual methods
.method public allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;
    .locals 5

    .line 406
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v1, v0, p1

    if-nez v1, :cond_0

    new-instance v1, Lcom/termux/terminal/TerminalRow;

    iget v2, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    const-wide/16 v3, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/termux/terminal/TerminalRow;-><init>(IJ)V

    aput-object v1, v0, p1

    goto :goto_0

    :cond_0
    aget-object v1, v0, p1

    :goto_0
    return-object v1
.end method

.method public blockCopy(IIIIII)V
    .locals 4

    if-nez p3, :cond_0

    return-void

    :cond_0
    if-ltz p1, :cond_4

    add-int v0, p1, p3

    .line 380
    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-gt v0, v1, :cond_4

    if-ltz p2, :cond_4

    add-int v2, p2, p4

    iget v3, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-gt v2, v3, :cond_4

    if-ltz p5, :cond_4

    add-int/2addr p3, p5

    if-gt p3, v1, :cond_4

    if-ltz p6, :cond_4

    add-int p3, p6, p4

    if-gt p3, v3, :cond_4

    const/4 p3, 0x0

    if-le p2, p6, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    move v1, p3

    :goto_0
    if-ge p3, p4, :cond_3

    if-eqz v1, :cond_2

    move v2, p3

    goto :goto_1

    :cond_2
    add-int/lit8 v2, p3, 0x1

    sub-int v2, p4, v2

    :goto_1
    add-int v3, p2, v2

    .line 385
    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v3

    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v3

    add-int/2addr v2, p6

    .line 386
    invoke-virtual {p0, v2}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v2

    invoke-virtual {v2, v3, p1, v0, p5}, Lcom/termux/terminal/TerminalRow;->copyInterval(Lcom/termux/terminal/TerminalRow;III)V

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_3
    return-void

    .line 381
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p1
.end method

.method public blockSet(IIIIIJ)V
    .locals 14

    move-object v6, p0

    move v7, p1

    move/from16 v8, p2

    move/from16 v9, p3

    move/from16 v10, p4

    if-ltz v7, :cond_2

    add-int v0, v7, v9

    .line 396
    iget v1, v6, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-gt v0, v1, :cond_2

    if-ltz v8, :cond_2

    add-int v0, v8, v10

    iget v1, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-gt v0, v1, :cond_2

    const/4 v11, 0x0

    move v12, v11

    :goto_0
    if-ge v12, v10, :cond_1

    move v13, v11

    :goto_1
    if-ge v13, v9, :cond_0

    add-int v1, v7, v13

    add-int v2, v8, v12

    move-object v0, p0

    move/from16 v3, p5

    move-wide/from16 v4, p6

    .line 402
    invoke-virtual/range {v0 .. v5}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_1
    return-void

    .line 397
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illegal arguments! blockSet("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p5

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v3, v6, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public clearLineWrap(I)V
    .locals 1

    .line 150
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    aget-object p1, v0, p1

    const/4 v0, 0x0

    iput-boolean v0, p1, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    return-void
.end method

.method public clearTranscript()V
    .locals 6

    .line 446
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ge v0, v1, :cond_0

    .line 447
    iget-object v4, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    iget v5, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    add-int/2addr v0, v5

    sub-int/2addr v0, v1

    invoke-static {v4, v0, v5, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 448
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    invoke-static {v0, v2, v1, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    goto :goto_0

    .line 450
    :cond_0
    iget-object v4, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    sub-int v1, v0, v1

    invoke-static {v4, v1, v0, v3}, Ljava/util/Arrays;->fill([Ljava/lang/Object;IILjava/lang/Object;)V

    .line 452
    :goto_0
    iput v2, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    return-void
.end method

.method public externalToInternalRow(I)I
    .locals 3

    .line 135
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    neg-int v0, v0

    if-lt p1, v0, :cond_1

    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-gt p1, v0, :cond_1

    .line 137
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    add-int/2addr v0, p1

    .line 138
    iget p1, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    if-gez v0, :cond_0

    add-int/2addr p1, v0

    goto :goto_0

    :cond_0
    rem-int p1, v0, p1

    :goto_0
    return p1

    .line 136
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "extRow="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mScreenRows="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mActiveTranscriptRows="

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getActiveRows()I
    .locals 2

    .line 110
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/2addr v0, v1

    return v0
.end method

.method public getActiveTranscriptRows()I
    .locals 1

    .line 106
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    return v0
.end method

.method public getLineWrap(I)Z
    .locals 1

    .line 146
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    aget-object p1, v0, p1

    iget-boolean p1, p1, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    return p1
.end method

.method public getSelectedText(IIII)Ljava/lang/String;
    .locals 6

    const/4 v5, 0x1

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 53
    invoke-virtual/range {v0 .. v5}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIIIZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedText(IIIIZ)Ljava/lang/String;
    .locals 7

    const/4 v5, 0x1

    const/4 v6, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 57
    invoke-virtual/range {v0 .. v6}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIIIZZ)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSelectedText(IIIIZZ)Ljava/lang/String;
    .locals 16

    move-object/from16 v0, p0

    .line 61
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    iget v2, v0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    .line 64
    invoke-virtual/range {p0 .. p0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v3

    neg-int v3, v3

    move/from16 v4, p2

    if-ge v4, v3, :cond_0

    invoke-virtual/range {p0 .. p0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v3

    neg-int v3, v3

    goto :goto_0

    :cond_0
    move v3, v4

    .line 65
    :goto_0
    iget v4, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    const/4 v5, 0x1

    move/from16 v6, p4

    if-lt v6, v4, :cond_1

    sub-int/2addr v4, v5

    goto :goto_1

    :cond_1
    move v4, v6

    :goto_1
    move v6, v3

    :goto_2
    if-gt v6, v4, :cond_f

    if-ne v6, v3, :cond_2

    move/from16 v8, p1

    goto :goto_3

    :cond_2
    const/4 v8, 0x0

    :goto_3
    if-ne v6, v4, :cond_3

    add-int/lit8 v9, p3, 0x1

    if-le v9, v2, :cond_4

    :cond_3
    move v9, v2

    .line 76
    :cond_4
    iget-object v10, v0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {v0, v6}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v11

    aget-object v10, v10, v11

    .line 77
    invoke-virtual {v10, v8}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v8

    .line 78
    iget v11, v0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-ge v9, v11, :cond_5

    invoke-virtual {v10, v9}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v11

    goto :goto_4

    :cond_5
    invoke-virtual {v10}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v11

    :goto_4
    if-ne v11, v8, :cond_6

    add-int/lit8 v11, v9, 0x1

    .line 81
    invoke-virtual {v10, v11}, Lcom/termux/terminal/TerminalRow;->findStartOfColumn(I)I

    move-result v11

    .line 83
    :cond_6
    iget-object v10, v10, Lcom/termux/terminal/TerminalRow;->mText:[C

    .line 86
    invoke-virtual {v0, v6}, Lcom/termux/terminal/TerminalBuffer;->getLineWrap(I)Z

    move-result v12

    const/4 v13, -0x1

    if-eqz v12, :cond_7

    if-ne v9, v2, :cond_7

    add-int/lit8 v9, v11, -0x1

    goto :goto_6

    :cond_7
    move v14, v8

    move v9, v13

    :goto_5
    if-ge v14, v11, :cond_9

    .line 92
    aget-char v15, v10, v14

    const/16 v7, 0x20

    if-eq v15, v7, :cond_8

    move v9, v14

    :cond_8
    add-int/lit8 v14, v14, 0x1

    goto :goto_5

    :cond_9
    :goto_6
    if-eq v9, v13, :cond_a

    sub-int v7, v9, v8

    add-int/2addr v7, v5

    .line 97
    invoke-virtual {v1, v10, v8, v7}, Ljava/lang/StringBuilder;->append([CII)Ljava/lang/StringBuilder;

    :cond_a
    add-int/lit8 v11, v11, -0x1

    if-ne v9, v11, :cond_b

    move v7, v5

    goto :goto_7

    :cond_b
    const/4 v7, 0x0

    :goto_7
    if-eqz p5, :cond_c

    if-nez v12, :cond_e

    :cond_c
    if-eqz p6, :cond_d

    if-nez v7, :cond_e

    :cond_d
    if-ge v6, v4, :cond_e

    .line 99
    iget v7, v0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    sub-int/2addr v7, v5

    if-ge v6, v7, :cond_e

    const/16 v7, 0xa

    .line 100
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 102
    :cond_f
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getStyleAt(II)J
    .locals 0

    .line 417
    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object p1

    invoke-virtual {p1, p2}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide p1

    return-wide p1
.end method

.method public getTranscriptTextWithFullLinesJoined()Ljava/lang/String;
    .locals 8

    .line 49
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    neg-int v3, v0

    iget v4, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    iget v5, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    const/4 v2, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x1

    move-object v1, p0

    invoke-virtual/range {v1 .. v7}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIIIZZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getTranscriptTextWithoutJoinedLines()Ljava/lang/String;
    .locals 7

    .line 45
    invoke-virtual {p0}, Lcom/termux/terminal/TerminalBuffer;->getActiveTranscriptRows()I

    move-result v0

    neg-int v3, v0

    iget v4, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    iget v5, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    const/4 v2, 0x0

    const/4 v6, 0x0

    move-object v1, p0

    invoke-virtual/range {v1 .. v6}, Lcom/termux/terminal/TerminalBuffer;->getSelectedText(IIIIZ)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public resize(III[IJZ)V
    .locals 31

    move-object/from16 v6, p0

    move/from16 v0, p1

    move/from16 v1, p2

    move/from16 v2, p3

    move-wide/from16 v7, p5

    .line 163
    iget v3, v6, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    const/4 v9, 0x1

    const/4 v10, 0x0

    if-ne v0, v3, :cond_8

    iget v3, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    if-gt v1, v3, :cond_8

    .line 165
    iget v0, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    sub-int v3, v0, v1

    if-lez v3, :cond_3

    if-ge v3, v0, :cond_3

    sub-int/2addr v0, v9

    :goto_0
    if-lez v0, :cond_5

    .line 169
    aget v4, p4, v9

    if-lt v4, v0, :cond_0

    goto :goto_2

    .line 170
    :cond_0
    invoke-virtual {v6, v0}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v4

    .line 171
    iget-object v5, v6, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v7, v5, v4

    if-eqz v7, :cond_1

    aget-object v4, v5, v4

    invoke-virtual {v4}, Lcom/termux/terminal/TerminalRow;->isBlank()Z

    move-result v4

    if-eqz v4, :cond_2

    :cond_1
    add-int/lit8 v3, v3, -0x1

    if-nez v3, :cond_2

    goto :goto_2

    :cond_2
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_3
    if-gez v3, :cond_5

    .line 177
    iget v0, v6, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    neg-int v0, v0

    invoke-static {v3, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-eq v3, v0, :cond_5

    move v4, v10

    :goto_1
    sub-int v5, v0, v3

    if-ge v4, v5, :cond_4

    .line 181
    iget v5, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    iget v11, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/2addr v5, v11

    add-int/2addr v5, v4

    iget v11, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    rem-int/2addr v5, v11

    invoke-virtual {v6, v5}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object v5

    invoke-virtual {v5, v7, v8}, Lcom/termux/terminal/TerminalRow;->clear(J)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    move v3, v0

    .line 185
    :cond_5
    :goto_2
    iget v0, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    add-int/2addr v0, v3

    iput v0, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 186
    iget v4, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    if-gez v0, :cond_6

    add-int/2addr v0, v4

    goto :goto_3

    :cond_6
    rem-int/2addr v0, v4

    :goto_3
    iput v0, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 187
    iput v2, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    if-eqz p7, :cond_7

    move v0, v10

    goto :goto_4

    .line 188
    :cond_7
    iget v0, v6, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    add-int/2addr v0, v3

    invoke-static {v10, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    :goto_4
    iput v0, v6, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 189
    aget v0, p4, v9

    sub-int/2addr v0, v3

    aput v0, p4, v9

    .line 190
    iput v1, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    move v1, v9

    move v2, v10

    goto/16 :goto_19

    .line 193
    :cond_8
    iget-object v11, v6, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    .line 194
    new-array v3, v2, [Lcom/termux/terminal/TerminalRow;

    iput-object v3, v6, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    move v3, v10

    :goto_5
    if-ge v3, v2, :cond_9

    .line 196
    iget-object v4, v6, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    new-instance v5, Lcom/termux/terminal/TerminalRow;

    invoke-direct {v5, v0, v7, v8}, Lcom/termux/terminal/TerminalRow;-><init>(IJ)V

    aput-object v5, v4, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_5

    .line 198
    :cond_9
    iget v3, v6, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 199
    iget v12, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 200
    iget v13, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    .line 201
    iget v14, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    .line 202
    iput v2, v6, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    .line 203
    iput v1, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    .line 204
    iput v10, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    iput v10, v6, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 205
    iput v0, v6, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    .line 209
    aget v15, p4, v9

    .line 210
    aget v4, p4, v10

    neg-int v0, v3

    const/4 v1, -0x1

    move v5, v0

    move v0, v1

    move v2, v10

    move v3, v2

    move/from16 v16, v3

    move/from16 v17, v16

    :goto_6
    if-ge v5, v13, :cond_23

    add-int v18, v12, v5

    if-gez v18, :cond_a

    add-int v18, v14, v18

    goto :goto_7

    .line 223
    :cond_a
    rem-int v18, v18, v14

    .line 225
    :goto_7
    aget-object v9, v11, v18

    if-ne v5, v15, :cond_b

    const/16 v18, 0x1

    goto :goto_8

    :cond_b
    move/from16 v18, v10

    :goto_8
    if-eqz v9, :cond_22

    if-nez v2, :cond_c

    if-nez v18, :cond_d

    .line 228
    :cond_c
    invoke-virtual {v9}, Lcom/termux/terminal/TerminalRow;->isBlank()Z

    move-result v19

    if-eqz v19, :cond_d

    goto/16 :goto_17

    :cond_d
    move/from16 p1, v2

    if-lez v3, :cond_10

    move v2, v10

    move/from16 v10, v16

    :goto_9
    if-ge v2, v3, :cond_f

    move/from16 p2, v4

    .line 234
    iget v4, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    move/from16 p3, v5

    add-int/lit8 v5, v4, -0x1

    if-ne v10, v5, :cond_e

    const/4 v5, 0x0

    .line 235
    invoke-virtual {v6, v5, v4, v7, v8}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_a

    :cond_e
    add-int/lit8 v10, v10, 0x1

    :goto_a
    add-int/lit8 v2, v2, 0x1

    move/from16 v4, p2

    move/from16 v5, p3

    const/16 v17, 0x0

    goto :goto_9

    :cond_f
    move/from16 p2, v4

    move/from16 p3, v5

    move/from16 v16, v10

    const/4 v10, 0x0

    goto :goto_b

    :cond_10
    move/from16 p2, v4

    move/from16 p3, v5

    move v10, v3

    :goto_b
    if-nez v18, :cond_13

    .line 246
    iget-boolean v2, v9, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    if-eqz v2, :cond_11

    goto :goto_d

    :cond_11
    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 251
    :goto_c
    invoke-virtual {v9}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v4

    if-ge v2, v4, :cond_14

    .line 253
    iget-object v4, v9, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v4, v4, v2

    const/16 v5, 0x20

    if-eq v4, v5, :cond_12

    add-int/lit8 v3, v2, 0x1

    :cond_12
    add-int/lit8 v2, v2, 0x1

    goto :goto_c

    .line 248
    :cond_13
    :goto_d
    invoke-virtual {v9}, Lcom/termux/terminal/TerminalRow;->getSpaceUsed()I

    move-result v3

    if-eqz v18, :cond_14

    move v4, v3

    const/16 v18, 0x1

    goto :goto_e

    :cond_14
    move v4, v3

    const/16 v18, 0x0

    :goto_e
    const-wide/16 v2, 0x0

    move/from16 p7, v10

    move/from16 v20, v17

    const/4 v5, 0x0

    const/4 v10, 0x0

    move/from16 v17, p1

    move/from16 v30, v16

    move/from16 v16, v1

    move/from16 v1, v30

    :goto_f
    if-ge v5, v4, :cond_1e

    move-wide/from16 v21, v2

    .line 261
    iget-object v2, v9, Lcom/termux/terminal/TerminalRow;->mText:[C

    aget-char v2, v2, v5

    .line 262
    invoke-static {v2}, Ljava/lang/Character;->isHighSurrogate(C)Z

    move-result v3

    if-eqz v3, :cond_15

    iget-object v3, v9, Lcom/termux/terminal/TerminalRow;->mText:[C

    add-int/lit8 v5, v5, 0x1

    aget-char v3, v3, v5

    invoke-static {v2, v3}, Ljava/lang/Character;->toCodePoint(CC)I

    move-result v2

    :cond_15
    move v3, v2

    move/from16 v23, v5

    .line 263
    invoke-static {v3}, Lcom/termux/terminal/WcWidth;->width(I)I

    move-result v24

    if-lez v24, :cond_16

    .line 265
    invoke-virtual {v9, v10}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v21

    :cond_16
    add-int v2, v20, v24

    .line 268
    iget v5, v6, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-le v2, v5, :cond_19

    .line 269
    invoke-virtual {v6, v1}, Lcom/termux/terminal/TerminalBuffer;->setLineWrap(I)V

    .line 270
    iget v2, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v5, v2, -0x1

    if-ne v1, v5, :cond_18

    if-eqz v17, :cond_17

    add-int/lit8 v0, v0, -0x1

    :cond_17
    const/4 v5, 0x0

    .line 272
    invoke-virtual {v6, v5, v2, v7, v8}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_10

    :cond_18
    add-int/lit8 v1, v1, 0x1

    :goto_10
    move/from16 v20, v0

    move/from16 v25, v1

    const/16 v26, 0x0

    goto :goto_11

    :cond_19
    move/from16 v25, v1

    move/from16 v26, v20

    move/from16 v20, v0

    :goto_11
    if-gtz v24, :cond_1a

    if-lez v26, :cond_1a

    const/4 v0, 0x1

    goto :goto_12

    :cond_1a
    const/4 v0, 0x0

    :goto_12
    sub-int v1, v26, v0

    move-object/from16 v0, p0

    move/from16 v2, v25

    move/from16 v29, v4

    move-object/from16 v27, v11

    move/from16 v28, v12

    move/from16 v11, p2

    move/from16 v12, p3

    move-wide/from16 v4, v21

    .line 281
    invoke-virtual/range {v0 .. v5}, Lcom/termux/terminal/TerminalBuffer;->setChar(IIIJ)V

    if-lez v24, :cond_1c

    if-ne v15, v12, :cond_1b

    if-ne v11, v10, :cond_1b

    move/from16 v0, v25

    move/from16 v16, v26

    const/16 v17, 0x1

    goto :goto_13

    :cond_1b
    move/from16 v0, v20

    :goto_13
    add-int v10, v10, v24

    add-int v26, v26, v24

    if-eqz v18, :cond_1d

    if-eqz v17, :cond_1d

    move/from16 v2, v17

    move/from16 v1, v25

    move/from16 v17, v26

    goto :goto_14

    :cond_1c
    move/from16 v0, v20

    :cond_1d
    move/from16 v20, v26

    const/4 v1, 0x1

    add-int/lit8 v5, v23, 0x1

    move/from16 p2, v11

    move/from16 p3, v12

    move-wide/from16 v2, v21

    move/from16 v1, v25

    move-object/from16 v11, v27

    move/from16 v12, v28

    move/from16 v4, v29

    goto/16 :goto_f

    :cond_1e
    move-object/from16 v27, v11

    move/from16 v28, v12

    move/from16 v11, p2

    move/from16 v12, p3

    move/from16 v2, v17

    move/from16 v17, v20

    :goto_14
    add-int/lit8 v3, v13, -0x1

    if-eq v12, v3, :cond_21

    .line 295
    iget-boolean v3, v9, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    if-nez v3, :cond_21

    .line 296
    iget v3, v6, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    add-int/lit8 v4, v3, -0x1

    if-ne v1, v4, :cond_20

    if-eqz v2, :cond_1f

    add-int/lit8 v0, v0, -0x1

    :cond_1f
    const/4 v4, 0x0

    .line 298
    invoke-virtual {v6, v4, v3, v7, v8}, Lcom/termux/terminal/TerminalBuffer;->scrollDownOneLine(IIJ)V

    goto :goto_15

    :cond_20
    add-int/lit8 v1, v1, 0x1

    :goto_15
    move/from16 v3, p7

    const/16 v17, 0x0

    goto :goto_16

    :cond_21
    move/from16 v3, p7

    :goto_16
    move/from16 v30, v16

    move/from16 v16, v1

    move/from16 v1, v30

    goto :goto_18

    :cond_22
    :goto_17
    move/from16 p1, v2

    move-object/from16 v27, v11

    move/from16 v28, v12

    move v11, v4

    move v12, v5

    add-int/lit8 v3, v3, 0x1

    move/from16 v2, p1

    :goto_18
    add-int/lit8 v5, v12, 0x1

    move v4, v11

    move-object/from16 v11, v27

    move/from16 v12, v28

    const/4 v9, 0x1

    const/4 v10, 0x0

    goto/16 :goto_6

    :cond_23
    move v2, v10

    .line 306
    aput v1, p4, v2

    const/4 v1, 0x1

    .line 307
    aput v0, p4, v1

    .line 311
    :goto_19
    aget v0, p4, v2

    if-ltz v0, :cond_24

    aget v0, p4, v1

    if-gez v0, :cond_25

    :cond_24
    aput v2, p4, v1

    aput v2, p4, v2

    :cond_25
    return-void
.end method

.method public scrollDownOneLine(IIJ)V
    .locals 2

    add-int/lit8 v0, p2, -0x1

    if-gt p1, v0, :cond_2

    if-ltz p1, :cond_2

    .line 343
    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-gt p2, v1, :cond_2

    .line 347
    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    invoke-direct {p0, v1, p1}, Lcom/termux/terminal/TerminalBuffer;->blockCopyLinesDown(II)V

    .line 350
    invoke-virtual {p0, p2}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    sub-int/2addr v1, p2

    invoke-direct {p0, p1, v1}, Lcom/termux/terminal/TerminalBuffer;->blockCopyLinesDown(II)V

    .line 353
    iget p1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    add-int/lit8 p1, p1, 0x1

    iget p2, p0, Lcom/termux/terminal/TerminalBuffer;->mTotalRows:I

    rem-int/2addr p1, p2

    iput p1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenFirstRow:I

    .line 355
    iget p1, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    sub-int/2addr p2, v1

    if-ge p1, p2, :cond_0

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcom/termux/terminal/TerminalBuffer;->mActiveTranscriptRows:I

    .line 358
    :cond_0
    invoke-virtual {p0, v0}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    .line 359
    iget-object p2, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    aget-object v0, p2, p1

    if-nez v0, :cond_1

    .line 360
    new-instance v0, Lcom/termux/terminal/TerminalRow;

    iget v1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-direct {v0, v1, p3, p4}, Lcom/termux/terminal/TerminalRow;-><init>(IJ)V

    aput-object v0, p2, p1

    goto :goto_0

    .line 362
    :cond_1
    aget-object p1, p2, p1

    invoke-virtual {p1, p3, p4}, Lcom/termux/terminal/TerminalRow;->clear(J)V

    :goto_0
    return-void

    .line 344
    :cond_2
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "topMargin="

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", bottomMargin="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mScreenRows="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setChar(IIIJ)V
    .locals 1

    .line 410
    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    if-ge p2, v0, :cond_0

    iget v0, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    if-ge p1, v0, :cond_0

    .line 412
    invoke-virtual {p0, p2}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result p2

    .line 413
    invoke-virtual {p0, p2}, Lcom/termux/terminal/TerminalBuffer;->allocateFullLineIfNecessary(I)Lcom/termux/terminal/TerminalRow;

    move-result-object p2

    invoke-virtual {p2, p1, p3, p4, p5}, Lcom/termux/terminal/TerminalRow;->setChar(IIJ)V

    return-void

    .line 411
    :cond_0
    new-instance p3, Ljava/lang/IllegalArgumentException;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "row="

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, ", column="

    invoke-virtual {p4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mScreenRows="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/termux/terminal/TerminalBuffer;->mScreenRows:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", mColumns="

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p0, Lcom/termux/terminal/TerminalBuffer;->mColumns:I

    invoke-virtual {p4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3
.end method

.method public setLineWrap(I)V
    .locals 1

    .line 142
    iget-object v0, p0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, p1}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result p1

    aget-object p1, v0, p1

    const/4 v0, 0x1

    iput-boolean v0, p1, Lcom/termux/terminal/TerminalRow;->mLineWrap:Z

    return-void
.end method

.method public setOrClearEffect(IZZZIIIIII)V
    .locals 12

    move-object v0, p0

    move v1, p1

    move/from16 v2, p9

    move/from16 v3, p7

    :goto_0
    if-ge v3, v2, :cond_7

    .line 424
    iget-object v4, v0, Lcom/termux/terminal/TerminalBuffer;->mLines:[Lcom/termux/terminal/TerminalRow;

    invoke-virtual {p0, v3}, Lcom/termux/terminal/TerminalBuffer;->externalToInternalRow(I)I

    move-result v5

    aget-object v4, v4, v5

    move/from16 v5, p7

    if-nez p4, :cond_1

    if-ne v3, v5, :cond_0

    goto :goto_1

    :cond_0
    move/from16 v6, p5

    goto :goto_2

    :cond_1
    :goto_1
    move/from16 v6, p8

    :goto_2
    if-nez p4, :cond_3

    add-int/lit8 v7, v3, 0x1

    if-ne v7, v2, :cond_2

    goto :goto_3

    :cond_2
    move/from16 v7, p6

    goto :goto_4

    :cond_3
    :goto_3
    move/from16 v7, p10

    :goto_4
    if-ge v6, v7, :cond_6

    .line 428
    invoke-virtual {v4, v6}, Lcom/termux/terminal/TerminalRow;->getStyle(I)J

    move-result-wide v8

    .line 429
    invoke-static {v8, v9}, Lcom/termux/terminal/TextStyle;->decodeForeColor(J)I

    move-result v10

    .line 430
    invoke-static {v8, v9}, Lcom/termux/terminal/TextStyle;->decodeBackColor(J)I

    move-result v11

    .line 431
    invoke-static {v8, v9}, Lcom/termux/terminal/TextStyle;->decodeEffect(J)I

    move-result v8

    if-eqz p3, :cond_4

    not-int v9, v1

    and-int/2addr v9, v8

    not-int v8, v8

    and-int/2addr v8, v1

    or-int/2addr v8, v9

    goto :goto_5

    :cond_4
    if-eqz p2, :cond_5

    or-int/2addr v8, v1

    goto :goto_5

    :cond_5
    not-int v9, v1

    and-int/2addr v8, v9

    .line 440
    :goto_5
    iget-object v9, v4, Lcom/termux/terminal/TerminalRow;->mStyle:[J

    invoke-static {v10, v11, v8}, Lcom/termux/terminal/TextStyle;->encode(III)J

    move-result-wide v10

    aput-wide v10, v9, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_7
    return-void
.end method
