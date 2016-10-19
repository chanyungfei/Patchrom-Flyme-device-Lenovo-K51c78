.class final enum Lcom/android/server/am/AppPcService$FirewallRule;
.super Ljava/lang/Enum;
.source "AppPcService.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/am/AppPcService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FirewallRule"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/server/am/AppPcService$FirewallRule;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/server/am/AppPcService$FirewallRule;

.field public static final enum Allow:Lcom/android/server/am/AppPcService$FirewallRule;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/android/server/am/AppPcService$FirewallRule;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum Init:Lcom/android/server/am/AppPcService$FirewallRule;

.field public static final enum Restrict:Lcom/android/server/am/AppPcService$FirewallRule;


# instance fields
.field private final mIntValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 11

    .prologue
    const/4 v10, 0x2

    const/4 v9, 0x1

    const/4 v2, 0x0

    .line 2503
    new-instance v0, Lcom/android/server/am/AppPcService$FirewallRule;

    const-string v1, "Init"

    const-string v3, "Init"

    const/4 v5, -0x1

    move v4, v2

    invoke-direct/range {v0 .. v5}, Lcom/android/server/am/AppPcService$FirewallRule;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v0, Lcom/android/server/am/AppPcService$FirewallRule;->Init:Lcom/android/server/am/AppPcService$FirewallRule;

    .line 2508
    new-instance v3, Lcom/android/server/am/AppPcService$FirewallRule;

    const-string v4, "Allow"

    const-string v6, "Allow"

    move v5, v9

    move v7, v9

    move v8, v2

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/AppPcService$FirewallRule;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/server/am/AppPcService$FirewallRule;->Allow:Lcom/android/server/am/AppPcService$FirewallRule;

    .line 2513
    new-instance v3, Lcom/android/server/am/AppPcService$FirewallRule;

    const-string v4, "Restrict"

    const-string v6, "Restrict"

    move v5, v10

    move v7, v10

    move v8, v9

    invoke-direct/range {v3 .. v8}, Lcom/android/server/am/AppPcService$FirewallRule;-><init>(Ljava/lang/String;ILjava/lang/String;II)V

    sput-object v3, Lcom/android/server/am/AppPcService$FirewallRule;->Restrict:Lcom/android/server/am/AppPcService$FirewallRule;

    .line 2498
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/server/am/AppPcService$FirewallRule;

    sget-object v1, Lcom/android/server/am/AppPcService$FirewallRule;->Init:Lcom/android/server/am/AppPcService$FirewallRule;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/server/am/AppPcService$FirewallRule;->Allow:Lcom/android/server/am/AppPcService$FirewallRule;

    aput-object v1, v0, v9

    sget-object v1, Lcom/android/server/am/AppPcService$FirewallRule;->Restrict:Lcom/android/server/am/AppPcService$FirewallRule;

    aput-object v1, v0, v10

    sput-object v0, Lcom/android/server/am/AppPcService$FirewallRule;->$VALUES:[Lcom/android/server/am/AppPcService$FirewallRule;

    .line 2547
    new-instance v0, Lcom/android/server/am/AppPcService$FirewallRule$1;

    invoke-direct {v0}, Lcom/android/server/am/AppPcService$FirewallRule$1;-><init>()V

    sput-object v0, Lcom/android/server/am/AppPcService$FirewallRule;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;II)V
    .locals 0
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "index"    # I
    .param p5, "value"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "II)V"
        }
    .end annotation

    .prologue
    .line 2529
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2530
    iput p5, p0, Lcom/android/server/am/AppPcService$FirewallRule;->mIntValue:I

    .line 2531
    return-void
.end method

.method public static parse(I)Lcom/android/server/am/AppPcService$FirewallRule;
    .locals 1
    .param p0, "value"    # I

    .prologue
    .line 2516
    packed-switch p0, :pswitch_data_0

    .line 2523
    :pswitch_0
    sget-object v0, Lcom/android/server/am/AppPcService$FirewallRule;->Allow:Lcom/android/server/am/AppPcService$FirewallRule;

    :goto_0
    return-object v0

    .line 2518
    :pswitch_1
    sget-object v0, Lcom/android/server/am/AppPcService$FirewallRule;->Init:Lcom/android/server/am/AppPcService$FirewallRule;

    goto :goto_0

    .line 2520
    :pswitch_2
    sget-object v0, Lcom/android/server/am/AppPcService$FirewallRule;->Restrict:Lcom/android/server/am/AppPcService$FirewallRule;

    goto :goto_0

    .line 2516
    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/server/am/AppPcService$FirewallRule;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 2498
    const-class v0, Lcom/android/server/am/AppPcService$FirewallRule;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/server/am/AppPcService$FirewallRule;

    return-object v0
.end method

.method public static values()[Lcom/android/server/am/AppPcService$FirewallRule;
    .locals 1

    .prologue
    .line 2498
    sget-object v0, Lcom/android/server/am/AppPcService$FirewallRule;->$VALUES:[Lcom/android/server/am/AppPcService$FirewallRule;

    invoke-virtual {v0}, [Lcom/android/server/am/AppPcService$FirewallRule;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/server/am/AppPcService$FirewallRule;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 2539
    const/4 v0, 0x0

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 2534
    iget v0, p0, Lcom/android/server/am/AppPcService$FirewallRule;->mIntValue:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 2544
    iget v0, p0, Lcom/android/server/am/AppPcService$FirewallRule;->mIntValue:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2545
    return-void
.end method
