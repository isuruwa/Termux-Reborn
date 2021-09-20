.class public Lio/noties/markwon/MarkwonConfiguration$Builder;
.super Ljava/lang/Object;
.source "MarkwonConfiguration.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/MarkwonConfiguration;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

.field private imageDestinationProcessor:Lio/noties/markwon/image/destination/ImageDestinationProcessor;

.field private imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

.field private linkResolver:Lio/noties/markwon/LinkResolver;

.field private spansFactory:Lio/noties/markwon/MarkwonSpansFactory;

.field private syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

.field private theme:Lio/noties/markwon/core/MarkwonTheme;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/core/MarkwonTheme;
    .locals 0

    .line 86
    iget-object p0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->theme:Lio/noties/markwon/core/MarkwonTheme;

    return-object p0
.end method

.method static synthetic access$100(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/image/AsyncDrawableLoader;
    .locals 0

    .line 86
    iget-object p0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

    return-object p0
.end method

.method static synthetic access$200(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/syntax/SyntaxHighlight;
    .locals 0

    .line 86
    iget-object p0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

    return-object p0
.end method

.method static synthetic access$300(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/LinkResolver;
    .locals 0

    .line 86
    iget-object p0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->linkResolver:Lio/noties/markwon/LinkResolver;

    return-object p0
.end method

.method static synthetic access$400(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/image/destination/ImageDestinationProcessor;
    .locals 0

    .line 86
    iget-object p0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageDestinationProcessor:Lio/noties/markwon/image/destination/ImageDestinationProcessor;

    return-object p0
.end method

.method static synthetic access$500(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/image/ImageSizeResolver;
    .locals 0

    .line 86
    iget-object p0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    return-object p0
.end method

.method static synthetic access$600(Lio/noties/markwon/MarkwonConfiguration$Builder;)Lio/noties/markwon/MarkwonSpansFactory;
    .locals 0

    .line 86
    iget-object p0, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->spansFactory:Lio/noties/markwon/MarkwonSpansFactory;

    return-object p0
.end method


# virtual methods
.method public build(Lio/noties/markwon/core/MarkwonTheme;Lio/noties/markwon/MarkwonSpansFactory;)Lio/noties/markwon/MarkwonConfiguration;
    .locals 0

    .line 144
    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->theme:Lio/noties/markwon/core/MarkwonTheme;

    .line 145
    iput-object p2, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->spansFactory:Lio/noties/markwon/MarkwonSpansFactory;

    .line 148
    iget-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

    if-nez p1, :cond_0

    .line 149
    invoke-static {}, Lio/noties/markwon/image/AsyncDrawableLoader;->noOp()Lio/noties/markwon/image/AsyncDrawableLoader;

    move-result-object p1

    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->asyncDrawableLoader:Lio/noties/markwon/image/AsyncDrawableLoader;

    .line 152
    :cond_0
    iget-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

    if-nez p1, :cond_1

    .line 153
    new-instance p1, Lio/noties/markwon/syntax/SyntaxHighlightNoOp;

    invoke-direct {p1}, Lio/noties/markwon/syntax/SyntaxHighlightNoOp;-><init>()V

    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->syntaxHighlight:Lio/noties/markwon/syntax/SyntaxHighlight;

    .line 156
    :cond_1
    iget-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->linkResolver:Lio/noties/markwon/LinkResolver;

    if-nez p1, :cond_2

    .line 157
    new-instance p1, Lio/noties/markwon/LinkResolverDef;

    invoke-direct {p1}, Lio/noties/markwon/LinkResolverDef;-><init>()V

    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->linkResolver:Lio/noties/markwon/LinkResolver;

    .line 161
    :cond_2
    iget-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageDestinationProcessor:Lio/noties/markwon/image/destination/ImageDestinationProcessor;

    if-nez p1, :cond_3

    .line 162
    invoke-static {}, Lio/noties/markwon/image/destination/ImageDestinationProcessor;->noOp()Lio/noties/markwon/image/destination/ImageDestinationProcessor;

    move-result-object p1

    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageDestinationProcessor:Lio/noties/markwon/image/destination/ImageDestinationProcessor;

    .line 165
    :cond_3
    iget-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    if-nez p1, :cond_4

    .line 166
    new-instance p1, Lio/noties/markwon/image/ImageSizeResolverDef;

    invoke-direct {p1}, Lio/noties/markwon/image/ImageSizeResolverDef;-><init>()V

    iput-object p1, p0, Lio/noties/markwon/MarkwonConfiguration$Builder;->imageSizeResolver:Lio/noties/markwon/image/ImageSizeResolver;

    .line 169
    :cond_4
    new-instance p1, Lio/noties/markwon/MarkwonConfiguration;

    const/4 p2, 0x0

    invoke-direct {p1, p0, p2}, Lio/noties/markwon/MarkwonConfiguration;-><init>(Lio/noties/markwon/MarkwonConfiguration$Builder;Lio/noties/markwon/MarkwonConfiguration$1;)V

    return-object p1
.end method
