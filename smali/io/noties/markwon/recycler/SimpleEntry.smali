.class public Lio/noties/markwon/recycler/SimpleEntry;
.super Lio/noties/markwon/recycler/MarkwonAdapter$Entry;
.source "SimpleEntry.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/noties/markwon/recycler/SimpleEntry$Holder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lio/noties/markwon/recycler/MarkwonAdapter$Entry<",
        "Lorg/commonmark/node/Node;",
        "Lio/noties/markwon/recycler/SimpleEntry$Holder;",
        ">;"
    }
.end annotation


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lorg/commonmark/node/Node;",
            "Landroid/text/Spanned;",
            ">;"
        }
    .end annotation
.end field

.field private final layoutResId:I

.field private final textViewIdRes:I


# direct methods
.method public constructor <init>(II)V
    .locals 1

    .line 47
    invoke-direct {p0}, Lio/noties/markwon/recycler/MarkwonAdapter$Entry;-><init>()V

    .line 42
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lio/noties/markwon/recycler/SimpleEntry;->cache:Ljava/util/Map;

    .line 48
    iput p1, p0, Lio/noties/markwon/recycler/SimpleEntry;->layoutResId:I

    .line 49
    iput p2, p0, Lio/noties/markwon/recycler/SimpleEntry;->textViewIdRes:I

    return-void
.end method

.method public static create(II)Lio/noties/markwon/recycler/SimpleEntry;
    .locals 1

    .line 38
    new-instance v0, Lio/noties/markwon/recycler/SimpleEntry;

    invoke-direct {v0, p0, p1}, Lio/noties/markwon/recycler/SimpleEntry;-><init>(II)V

    return-object v0
.end method

.method public static createTextViewIsRoot(I)Lio/noties/markwon/recycler/SimpleEntry;
    .locals 2

    .line 33
    new-instance v0, Lio/noties/markwon/recycler/SimpleEntry;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lio/noties/markwon/recycler/SimpleEntry;-><init>(II)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic bindHolder(Lio/noties/markwon/Markwon;Lio/noties/markwon/recycler/MarkwonAdapter$Holder;Lorg/commonmark/node/Node;)V
    .locals 0

    .line 24
    check-cast p2, Lio/noties/markwon/recycler/SimpleEntry$Holder;

    invoke-virtual {p0, p1, p2, p3}, Lio/noties/markwon/recycler/SimpleEntry;->bindHolder(Lio/noties/markwon/Markwon;Lio/noties/markwon/recycler/SimpleEntry$Holder;Lorg/commonmark/node/Node;)V

    return-void
.end method

.method public bindHolder(Lio/noties/markwon/Markwon;Lio/noties/markwon/recycler/SimpleEntry$Holder;Lorg/commonmark/node/Node;)V
    .locals 2

    .line 60
    iget-object v0, p0, Lio/noties/markwon/recycler/SimpleEntry;->cache:Ljava/util/Map;

    invoke-interface {v0, p3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/text/Spanned;

    if-nez v0, :cond_0

    .line 62
    invoke-virtual {p1, p3}, Lio/noties/markwon/Markwon;->render(Lorg/commonmark/node/Node;)Landroid/text/Spanned;

    move-result-object v0

    .line 63
    iget-object v1, p0, Lio/noties/markwon/recycler/SimpleEntry;->cache:Ljava/util/Map;

    invoke-interface {v1, p3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 65
    :cond_0
    iget-object p2, p2, Lio/noties/markwon/recycler/SimpleEntry$Holder;->textView:Landroid/widget/TextView;

    invoke-virtual {p1, p2, v0}, Lio/noties/markwon/Markwon;->setParsedMarkdown(Landroid/widget/TextView;Landroid/text/Spanned;)V

    return-void
.end method

.method public clear()V
    .locals 1

    .line 70
    iget-object v0, p0, Lio/noties/markwon/recycler/SimpleEntry;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public bridge synthetic createHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lio/noties/markwon/recycler/MarkwonAdapter$Holder;
    .locals 0

    .line 24
    invoke-virtual {p0, p1, p2}, Lio/noties/markwon/recycler/SimpleEntry;->createHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lio/noties/markwon/recycler/SimpleEntry$Holder;

    move-result-object p1

    return-object p1
.end method

.method public createHolder(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Lio/noties/markwon/recycler/SimpleEntry$Holder;
    .locals 4

    .line 55
    new-instance v0, Lio/noties/markwon/recycler/SimpleEntry$Holder;

    iget v1, p0, Lio/noties/markwon/recycler/SimpleEntry;->textViewIdRes:I

    iget v2, p0, Lio/noties/markwon/recycler/SimpleEntry;->layoutResId:I

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-direct {v0, v1, p1}, Lio/noties/markwon/recycler/SimpleEntry$Holder;-><init>(ILandroid/view/View;)V

    return-object v0
.end method
