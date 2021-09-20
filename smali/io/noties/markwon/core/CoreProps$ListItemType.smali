.class public final enum Lio/noties/markwon/core/CoreProps$ListItemType;
.super Ljava/lang/Enum;
.source "CoreProps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/noties/markwon/core/CoreProps;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ListItemType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lio/noties/markwon/core/CoreProps$ListItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lio/noties/markwon/core/CoreProps$ListItemType;

.field public static final enum BULLET:Lio/noties/markwon/core/CoreProps$ListItemType;

.field public static final enum ORDERED:Lio/noties/markwon/core/CoreProps$ListItemType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 28
    new-instance v0, Lio/noties/markwon/core/CoreProps$ListItemType;

    const-string v1, "BULLET"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lio/noties/markwon/core/CoreProps$ListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lio/noties/markwon/core/CoreProps$ListItemType;->BULLET:Lio/noties/markwon/core/CoreProps$ListItemType;

    .line 29
    new-instance v1, Lio/noties/markwon/core/CoreProps$ListItemType;

    const-string v3, "ORDERED"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lio/noties/markwon/core/CoreProps$ListItemType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lio/noties/markwon/core/CoreProps$ListItemType;->ORDERED:Lio/noties/markwon/core/CoreProps$ListItemType;

    const/4 v3, 0x2

    new-array v3, v3, [Lio/noties/markwon/core/CoreProps$ListItemType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 27
    sput-object v3, Lio/noties/markwon/core/CoreProps$ListItemType;->$VALUES:[Lio/noties/markwon/core/CoreProps$ListItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 27
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lio/noties/markwon/core/CoreProps$ListItemType;
    .locals 1

    .line 27
    const-class v0, Lio/noties/markwon/core/CoreProps$ListItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lio/noties/markwon/core/CoreProps$ListItemType;

    return-object p0
.end method

.method public static values()[Lio/noties/markwon/core/CoreProps$ListItemType;
    .locals 1

    .line 27
    sget-object v0, Lio/noties/markwon/core/CoreProps$ListItemType;->$VALUES:[Lio/noties/markwon/core/CoreProps$ListItemType;

    invoke-virtual {v0}, [Lio/noties/markwon/core/CoreProps$ListItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lio/noties/markwon/core/CoreProps$ListItemType;

    return-object v0
.end method
