.class public final synthetic Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$Ij2_2OMeNR08KJnF9cgDYZJ6sks;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Function;


# static fields
.field public static final synthetic INSTANCE:Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$Ij2_2OMeNR08KJnF9cgDYZJ6sks;


# direct methods
.method static synthetic constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$Ij2_2OMeNR08KJnF9cgDYZJ6sks;

    invoke-direct {v0}, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$Ij2_2OMeNR08KJnF9cgDYZJ6sks;-><init>()V

    sput-object v0, Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$Ij2_2OMeNR08KJnF9cgDYZJ6sks;->INSTANCE:Lcom/termux/app/terminal/io/extrakeys/-$$Lambda$Ij2_2OMeNR08KJnF9cgDYZJ6sks;

    return-void
.end method

.method private synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p1, Lcom/termux/app/terminal/io/extrakeys/ExtraKeysView$SpecialButton;

    invoke-virtual {p1}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
