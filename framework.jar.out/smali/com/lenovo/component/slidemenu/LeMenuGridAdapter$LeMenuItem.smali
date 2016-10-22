.class public final Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;
.super Ljava/lang/Object;
.source "LeMenuGridAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lenovo/component/slidemenu/LeMenuGridAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LeMenuItem"
.end annotation


# instance fields
.field private final mContent:Ljava/lang/String;

.field private final mContentId:I

.field private final mIconId:I


# direct methods
.method public constructor <init>(II)V
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "contentId"    # I

    .prologue
    .line 227
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 228
    iput p1, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;->mIconId:I

    .line 229
    iput p2, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;->mContentId:I

    .line 231
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;->mContent:Ljava/lang/String;

    .line 232
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "iconId"    # I
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 234
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput p1, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;->mIconId:I

    .line 236
    iput-object p2, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;->mContent:Ljava/lang/String;

    .line 238
    const/4 v0, -0x1

    iput v0, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;->mContentId:I

    .line 239
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;->mContent:Ljava/lang/String;

    return-object v0
.end method

.method public getContentId()I
    .locals 1

    .prologue
    .line 246
    iget v0, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;->mContentId:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .prologue
    .line 242
    iget v0, p0, Lcom/lenovo/component/slidemenu/LeMenuGridAdapter$LeMenuItem;->mIconId:I

    return v0
.end method
