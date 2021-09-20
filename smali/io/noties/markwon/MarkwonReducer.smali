.class public abstract Lio/noties/markwon/MarkwonReducer;
.super Ljava/lang/Object;
.source "MarkwonReducer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/MarkwonReducer$DirectChildren;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static directChildren()Lio/noties/markwon/MarkwonReducer;
    .locals 1

    .line 23
    new-instance v0, Lio/noties/markwon/MarkwonReducer$DirectChildren;

    invoke-direct {v0}, Lio/noties/markwon/MarkwonReducer$DirectChildren;-><init>()V

    return-object v0
.end method


# virtual methods
.method public abstract reduce(Lorg/commonmark/node/Node;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/commonmark/node/Node;",
            ")",
            "Ljava/util/List<",
            "Lorg/commonmark/node/Node;",
            ">;"
        }
    .end annotation
.end method
