.class public final synthetic Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$glD51vue5Cak32o_qz0_L569Y2w;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/noties/markwon/SpanFactory;


# static fields
.field public static final synthetic INSTANCE:Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$glD51vue5Cak32o_qz0_L569Y2w;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$glD51vue5Cak32o_qz0_L569Y2w;

    invoke-direct {v0}, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$glD51vue5Cak32o_qz0_L569Y2w;-><init>()V

    sput-object v0, Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$glD51vue5Cak32o_qz0_L569Y2w;->INSTANCE:Lcom/termux/shared/markdown/-$$Lambda$MarkdownUtils$2$glD51vue5Cak32o_qz0_L569Y2w;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getSpans(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;
    .locals 0

    invoke-static {p1, p2}, Lcom/termux/shared/markdown/MarkdownUtils$2;->lambda$configureSpansFactory$2(Lio/noties/markwon/MarkwonConfiguration;Lio/noties/markwon/RenderProps;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
