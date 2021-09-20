.class Lio/noties/markwon/recycler/MarkwonAdapterImpl$BuilderImpl;
.super Ljava/lang/Object;
.source "MarkwonAdapterImpl.java"

# interfaces
.implements Lio/noties/markwon/recycler/MarkwonAdapter$Builder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/recycler/MarkwonAdapterImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "BuilderImpl"
.end annotation


# instance fields
.field private final defaultEntry:Lio/noties/markwon/recycler/MarkwonAdapter$Entry;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lio/noties/markwon/recycler/MarkwonAdapter$Entry<",
            "Lorg/commonmark/node/Node;",
            "Lio/noties/markwon/recycler/MarkwonAdapter$Holder;",
            ">;"
        }
    .end annotation
.end field

.field private final entries:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lio/noties/markwon/recycler/MarkwonAdapter$Entry<",
            "Lorg/commonmark/node/Node;",
            "Lio/noties/markwon/recycler/MarkwonAdapter$Holder;",
            ">;>;"
        }
    .end annotation
.end field

.field private reducer:Lio/noties/markwon/MarkwonReducer;


# direct methods
.method constructor <init>(Lio/noties/markwon/recycler/MarkwonAdapter$Entry;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lio/noties/markwon/recycler/MarkwonAdapter$Entry<",
            "Lorg/commonmark/node/Node;",
            "Lio/noties/markwon/recycler/MarkwonAdapter$Holder;",
            ">;)V"
        }
    .end annotation

    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 143
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x3

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lio/noties/markwon/recycler/MarkwonAdapterImpl$BuilderImpl;->entries:Landroid/util/SparseArray;

    .line 150
    iput-object p1, p0, Lio/noties/markwon/recycler/MarkwonAdapterImpl$BuilderImpl;->defaultEntry:Lio/noties/markwon/recycler/MarkwonAdapter$Entry;

    return-void
.end method


# virtual methods
.method public build()Lio/noties/markwon/recycler/MarkwonAdapter;
    .locals 4

    .line 174
    iget-object v0, p0, Lio/noties/markwon/recycler/MarkwonAdapterImpl$BuilderImpl;->reducer:Lio/noties/markwon/MarkwonReducer;

    if-nez v0, :cond_0

    .line 175
    invoke-static {}, Lio/noties/markwon/MarkwonReducer;->directChildren()Lio/noties/markwon/MarkwonReducer;

    move-result-object v0

    iput-object v0, p0, Lio/noties/markwon/recycler/MarkwonAdapterImpl$BuilderImpl;->reducer:Lio/noties/markwon/MarkwonReducer;

    .line 178
    :cond_0
    new-instance v0, Lio/noties/markwon/recycler/MarkwonAdapterImpl;

    iget-object v1, p0, Lio/noties/markwon/recycler/MarkwonAdapterImpl$BuilderImpl;->entries:Landroid/util/SparseArray;

    iget-object v2, p0, Lio/noties/markwon/recycler/MarkwonAdapterImpl$BuilderImpl;->defaultEntry:Lio/noties/markwon/recycler/MarkwonAdapter$Entry;

    iget-object v3, p0, Lio/noties/markwon/recycler/MarkwonAdapterImpl$BuilderImpl;->reducer:Lio/noties/markwon/MarkwonReducer;

    invoke-direct {v0, v1, v2, v3}, Lio/noties/markwon/recycler/MarkwonAdapterImpl;-><init>(Landroid/util/SparseArray;Lio/noties/markwon/recycler/MarkwonAdapter$Entry;Lio/noties/markwon/MarkwonReducer;)V

    return-object v0
.end method

.method public include(Ljava/lang/Class;Lio/noties/markwon/recycler/MarkwonAdapter$Entry;)Lio/noties/markwon/recycler/MarkwonAdapter$Builder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/commonmark/node/Node;",
            ">(",
            "Ljava/lang/Class<",
            "TN;>;",
            "Lio/noties/markwon/recycler/MarkwonAdapter$Entry<",
            "-TN;+",
            "Lio/noties/markwon/recycler/MarkwonAdapter$Holder;",
            ">;)",
            "Lio/noties/markwon/recycler/MarkwonAdapter$Builder;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lio/noties/markwon/recycler/MarkwonAdapterImpl$BuilderImpl;->entries:Landroid/util/SparseArray;

    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result p1

    invoke-virtual {v0, p1, p2}, Landroid/util/SparseArray;->append(ILjava/lang/Object;)V

    return-object p0
.end method
