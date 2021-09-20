.class Lorg/commonmark/internal/BlockContent;
.super Ljava/lang/Object;
.source "BlockContent.java"


# instance fields
.field private lineCount:I

.field private final sb:Ljava/lang/StringBuilder;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lorg/commonmark/internal/BlockContent;->lineCount:I

    .line 10
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lorg/commonmark/internal/BlockContent;->sb:Ljava/lang/StringBuilder;

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/CharSequence;)V
    .locals 2

    .line 18
    iget v0, p0, Lorg/commonmark/internal/BlockContent;->lineCount:I

    if-eqz v0, :cond_0

    .line 19
    iget-object v0, p0, Lorg/commonmark/internal/BlockContent;->sb:Ljava/lang/StringBuilder;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 21
    :cond_0
    iget-object v0, p0, Lorg/commonmark/internal/BlockContent;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 22
    iget p1, p0, Lorg/commonmark/internal/BlockContent;->lineCount:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lorg/commonmark/internal/BlockContent;->lineCount:I

    return-void
.end method

.method public getString()Ljava/lang/String;
    .locals 1

    .line 26
    iget-object v0, p0, Lorg/commonmark/internal/BlockContent;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
