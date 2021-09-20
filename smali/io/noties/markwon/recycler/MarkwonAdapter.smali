.class public abstract Lio/noties/markwon/recycler/MarkwonAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "MarkwonAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/recycler/MarkwonAdapter$Holder;,
        Lio/noties/markwon/recycler/MarkwonAdapter$Entry;,
        Lio/noties/markwon/recycler/MarkwonAdapter$Builder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lio/noties/markwon/recycler/MarkwonAdapter$Holder;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 35
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method public static builder(Lio/noties/markwon/recycler/MarkwonAdapter$Entry;)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/recycler/MarkwonAdapter$Entry<",
            "+",
            "Lorg/commonmark/node/Node;",
            "+",
            "Lio/noties/markwon/recycler/MarkwonAdapter$Holder;",
            ">;)",
            "Lio/noties/markwon/recycler/MarkwonAdapter$Builder;"
        }
    .end annotation

    .line 58
    new-instance v0, Lio/noties/markwon/recycler/MarkwonAdapterImpl$BuilderImpl;

    invoke-direct {v0, p0}, Lio/noties/markwon/recycler/MarkwonAdapterImpl$BuilderImpl;-><init>(Lio/noties/markwon/recycler/MarkwonAdapter$Entry;)V

    return-object v0
.end method

.method public static builderTextViewIsRoot(I)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;
    .locals 0

    .line 39
    invoke-static {p0}, Lio/noties/markwon/recycler/SimpleEntry;->createTextViewIsRoot(I)Lio/noties/markwon/recycler/SimpleEntry;

    move-result-object p0

    invoke-static {p0}, Lio/noties/markwon/recycler/MarkwonAdapter;->builder(Lio/noties/markwon/recycler/MarkwonAdapter$Entry;)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public abstract setMarkdown(Lio/noties/markwon/Markwon;Ljava/lang/String;)V
.end method
