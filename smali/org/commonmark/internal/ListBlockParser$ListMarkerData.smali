.class Lorg/commonmark/internal/ListBlockParser$ListMarkerData;
.super Ljava/lang/Object;
.source "ListBlockParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/commonmark/internal/ListBlockParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ListMarkerData"
.end annotation


# instance fields
.field final indexAfterMarker:I

.field final listBlock:Lorg/commonmark/node/ListBlock;


# direct methods
.method constructor <init>(Lorg/commonmark/node/ListBlock;I)V
    .locals 0

    .line 251
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 252
    iput-object p1, p0, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;->listBlock:Lorg/commonmark/node/ListBlock;

    .line 253
    iput p2, p0, Lorg/commonmark/internal/ListBlockParser$ListMarkerData;->indexAfterMarker:I

    return-void
.end method
