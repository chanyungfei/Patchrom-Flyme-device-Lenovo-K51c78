.class public Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;
.super Ljava/lang/Object;
.source "UriEncodeBitsSet.java"


# static fields
.field protected static final ABSOLUTE_URI:Ljava/util/BitSet;

.field protected static final ABS_PATH:Ljava/util/BitSet;

.field public static final ALLOWED_ABS_PATH:Ljava/util/BitSet;

.field public static final ALLOWED_AUTHORTIY:Ljava/util/BitSet;

.field public static final ALLOWED_FRAGMENT:Ljava/util/BitSet;

.field public static final ALLOWED_HOST:Ljava/util/BitSet;

.field public static final ALLOWED_IPV6_REFERENCE:Ljava/util/BitSet;

.field public static final ALLOWED_OPAQUE_PART:Ljava/util/BitSet;

.field public static final ALLOWED_QUERY:Ljava/util/BitSet;

.field public static final ALLOWED_REG_NAME:Ljava/util/BitSet;

.field public static final ALLOWED_REL_PATH:Ljava/util/BitSet;

.field public static final ALLOWED_USER_INFO:Ljava/util/BitSet;

.field public static final ALLOWED_WITHIN_AUTHORITY:Ljava/util/BitSet;

.field public static final ALLOWED_WITHIN_PATH:Ljava/util/BitSet;

.field public static final ALLOWED_WITHIN_QUERY:Ljava/util/BitSet;

.field public static final ALLOWED_WITHIN_USER_INFO:Ljava/util/BitSet;

.field protected static final ALPHA:Ljava/util/BitSet;

.field protected static final ALPHA_NUM:Ljava/util/BitSet;

.field protected static final AUTHORITY:Ljava/util/BitSet;

.field public static final CONTROL:Ljava/util/BitSet;

.field public static final DELIMS:Ljava/util/BitSet;

.field protected static final DIGIT:Ljava/util/BitSet;

.field public static final DISALLOWED_OPAQUE_PART:Ljava/util/BitSet;

.field public static final DISALLOWED_REL_PATH:Ljava/util/BitSet;

.field protected static final DOMAIN_LABEL:Ljava/util/BitSet;

.field protected static final ESCAPED:Ljava/util/BitSet;

.field protected static final FRAGMENT:Ljava/util/BitSet;

.field protected static final HEX:Ljava/util/BitSet;

.field protected static final HIER_PART:Ljava/util/BitSet;

.field protected static final HOST:Ljava/util/BitSet;

.field protected static final HOSTNAME:Ljava/util/BitSet;

.field protected static final HOST_PORT:Ljava/util/BitSet;

.field protected static final IPV4_ADDRESS:Ljava/util/BitSet;

.field protected static final IPV6_ADDRESS:Ljava/util/BitSet;

.field protected static final IPV6_REFERENCE:Ljava/util/BitSet;

.field protected static final MARK:Ljava/util/BitSet;

.field protected static final NET_PATH:Ljava/util/BitSet;

.field protected static final OPAQUE_PART:Ljava/util/BitSet;

.field protected static final PARAM:Ljava/util/BitSet;

.field protected static final PATH:Ljava/util/BitSet;

.field protected static final PATH_SEGMENTS:Ljava/util/BitSet;

.field protected static final PCHAR:Ljava/util/BitSet;

.field protected static final PERCENT:Ljava/util/BitSet;

.field protected static final PORT:Ljava/util/BitSet;

.field protected static final QUERY:Ljava/util/BitSet;

.field protected static final REG_NAME:Ljava/util/BitSet;

.field protected static final RELATIVE_URI:Ljava/util/BitSet;

.field protected static final REL_PATH:Ljava/util/BitSet;

.field protected static final REL_SEGMENT:Ljava/util/BitSet;

.field protected static final RESERVED:Ljava/util/BitSet;

.field protected static final ROOTPATH:[C

.field protected static final SCHEME:Ljava/util/BitSet;

.field protected static final SEGMENT:Ljava/util/BitSet;

.field protected static final SERVER:Ljava/util/BitSet;

.field public static final SPACE:Ljava/util/BitSet;

.field protected static final TOP_LABEL:Ljava/util/BitSet;

.field protected static final UNRESERVED:Ljava/util/BitSet;

.field public static final UNWISE:Ljava/util/BitSet;

.field protected static final URIC:Ljava/util/BitSet;

.field protected static final URIC_NO_SLASH:Ljava/util/BitSet;

.field protected static final URI_REFERENCE:Ljava/util/BitSet;

.field protected static final USER_INFO:Ljava/util/BitSet;

.field public static final WITHIN_USERINFO:Ljava/util/BitSet;

.field protected static sDefaultDocumentCharset:Ljava/lang/String; = null

.field protected static sDefaultDocumentCharsetByLocale:Ljava/lang/String; = null

.field protected static sDefaultDocumentCharsetByPlatform:Ljava/lang/String; = null

.field protected static sDefaultProtocolCharset:Ljava/lang/String; = null

.field static final serialVersionUID:J = 0x864831aad836c36L


# instance fields
.field protected mAuthority:[C

.field protected mFragment:[C

.field protected mHash:I

.field protected mHost:[C

.field protected mIsAbsPath:Z

.field protected mIsHierPart:Z

.field protected mIsHostname:Z

.field protected mIsIpv4Address:Z

.field protected mIsIpv6Reference:Z

.field protected mIsNetPath:Z

.field protected mIsOpaquePart:Z

.field protected mIsRegName:Z

.field protected mIsRelPath:Z

.field protected mIsServer:Z

.field protected mOpaque:[C

.field protected mPath:[C

.field protected mPort:I

.field protected mProtocolCharset:Ljava/lang/String;

.field protected mQuery:[C

.field protected mScheme:[C

.field protected mUri:[C

.field protected mUserInfo:[C


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/16 v8, 0x3a

    const/16 v7, 0x2b

    const/16 v6, 0x3b

    const/16 v5, 0x25

    const/16 v4, 0x100

    .line 76
    const-string v1, "UTF-8"

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->sDefaultProtocolCharset:Ljava/lang/String;

    .line 82
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->sDefaultDocumentCharset:Ljava/lang/String;

    .line 83
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->sDefaultDocumentCharsetByLocale:Ljava/lang/String;

    .line 84
    const/4 v1, 0x0

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->sDefaultDocumentCharsetByPlatform:Ljava/lang/String;

    .line 134
    const/4 v1, 0x1

    new-array v1, v1, [C

    const/4 v2, 0x0

    const/16 v3, 0x2f

    aput-char v3, v1, v2

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ROOTPATH:[C

    .line 145
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PERCENT:Ljava/util/BitSet;

    .line 148
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PERCENT:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 164
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DIGIT:Ljava/util/BitSet;

    .line 167
    const/16 v0, 0x30

    .local v0, "i":I
    :goto_0
    const/16 v1, 0x39

    if-gt v0, v1, :cond_0

    .line 168
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DIGIT:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 167
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 184
    :cond_0
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALPHA:Ljava/util/BitSet;

    .line 187
    const/16 v0, 0x61

    :goto_1
    const/16 v1, 0x7a

    if-gt v0, v1, :cond_1

    .line 188
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALPHA:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 187
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 190
    :cond_1
    const/16 v0, 0x41

    :goto_2
    const/16 v1, 0x5a

    if-gt v0, v1, :cond_2

    .line 191
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALPHA:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 190
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 207
    :cond_2
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALPHA_NUM:Ljava/util/BitSet;

    .line 210
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALPHA_NUM:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALPHA:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 211
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALPHA_NUM:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DIGIT:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 228
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HEX:Ljava/util/BitSet;

    .line 231
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HEX:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DIGIT:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 232
    const/16 v0, 0x61

    :goto_3
    const/16 v1, 0x66

    if-gt v0, v1, :cond_3

    .line 233
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HEX:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 235
    :cond_3
    const/16 v0, 0x41

    :goto_4
    const/16 v1, 0x46

    if-gt v0, v1, :cond_4

    .line 236
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HEX:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 235
    add-int/lit8 v0, v0, 0x1

    goto :goto_4

    .line 252
    :cond_4
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ESCAPED:Ljava/util/BitSet;

    .line 255
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ESCAPED:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PERCENT:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 256
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ESCAPED:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HEX:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 273
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->MARK:Ljava/util/BitSet;

    .line 276
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 277
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x5f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 278
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 279
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x21

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 280
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x7e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 281
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x2a

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 282
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x27

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 283
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x28

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 284
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->MARK:Ljava/util/BitSet;

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 300
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNRESERVED:Ljava/util/BitSet;

    .line 303
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNRESERVED:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALPHA_NUM:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 304
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNRESERVED:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->MARK:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 321
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->RESERVED:Ljava/util/BitSet;

    .line 324
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 325
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 326
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 327
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 328
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 329
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 330
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 331
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 332
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 333
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->RESERVED:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 348
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC:Ljava/util/BitSet;

    .line 351
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 352
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 353
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ESCAPED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 368
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC:Ljava/util/BitSet;

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->FRAGMENT:Ljava/util/BitSet;

    .line 382
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC:Ljava/util/BitSet;

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->QUERY:Ljava/util/BitSet;

    .line 398
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PCHAR:Ljava/util/BitSet;

    .line 401
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PCHAR:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 402
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PCHAR:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ESCAPED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 403
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PCHAR:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 404
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PCHAR:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 405
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PCHAR:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 406
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PCHAR:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 407
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PCHAR:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 408
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PCHAR:Ljava/util/BitSet;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 409
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PCHAR:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 424
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PCHAR:Ljava/util/BitSet;

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PARAM:Ljava/util/BitSet;

    .line 438
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SEGMENT:Ljava/util/BitSet;

    .line 441
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SEGMENT:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PCHAR:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 442
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SEGMENT:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 443
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SEGMENT:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PARAM:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 458
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PATH_SEGMENTS:Ljava/util/BitSet;

    .line 461
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PATH_SEGMENTS:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 462
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PATH_SEGMENTS:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SEGMENT:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 477
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ABS_PATH:Ljava/util/BitSet;

    .line 480
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ABS_PATH:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 481
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ABS_PATH:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PATH_SEGMENTS:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 498
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC_NO_SLASH:Ljava/util/BitSet;

    .line 501
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC_NO_SLASH:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 502
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC_NO_SLASH:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ESCAPED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 503
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC_NO_SLASH:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 504
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC_NO_SLASH:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 505
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC_NO_SLASH:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 506
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC_NO_SLASH:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 507
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC_NO_SLASH:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 508
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC_NO_SLASH:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 509
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC_NO_SLASH:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 510
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC_NO_SLASH:Ljava/util/BitSet;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 511
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC_NO_SLASH:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 526
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->OPAQUE_PART:Ljava/util/BitSet;

    .line 530
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->OPAQUE_PART:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC_NO_SLASH:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 531
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->OPAQUE_PART:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 546
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PATH:Ljava/util/BitSet;

    .line 549
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PATH:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ABS_PATH:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 550
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PATH:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->OPAQUE_PART:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 556
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DIGIT:Ljava/util/BitSet;

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PORT:Ljava/util/BitSet;

    .line 570
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPV4_ADDRESS:Ljava/util/BitSet;

    .line 573
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPV4_ADDRESS:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DIGIT:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 574
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPV4_ADDRESS:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 589
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPV6_ADDRESS:Ljava/util/BitSet;

    .line 592
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPV6_ADDRESS:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HEX:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 593
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPV6_ADDRESS:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 594
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPV6_ADDRESS:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPV4_ADDRESS:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 609
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPV6_REFERENCE:Ljava/util/BitSet;

    .line 612
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPV6_REFERENCE:Ljava/util/BitSet;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 613
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPV6_REFERENCE:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPV6_ADDRESS:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 614
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPV6_REFERENCE:Ljava/util/BitSet;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 629
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->TOP_LABEL:Ljava/util/BitSet;

    .line 632
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->TOP_LABEL:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALPHA_NUM:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 633
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->TOP_LABEL:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 648
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->TOP_LABEL:Ljava/util/BitSet;

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DOMAIN_LABEL:Ljava/util/BitSet;

    .line 662
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HOSTNAME:Ljava/util/BitSet;

    .line 665
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HOSTNAME:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->TOP_LABEL:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 667
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HOSTNAME:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 682
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HOST:Ljava/util/BitSet;

    .line 685
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HOST:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HOSTNAME:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 687
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HOST:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPV6_REFERENCE:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 702
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HOST_PORT:Ljava/util/BitSet;

    .line 705
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HOST_PORT:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HOST:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 706
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HOST_PORT:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 707
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HOST_PORT:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PORT:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 723
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->USER_INFO:Ljava/util/BitSet;

    .line 726
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->USER_INFO:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 727
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->USER_INFO:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ESCAPED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 728
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->USER_INFO:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 729
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->USER_INFO:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 730
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->USER_INFO:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 731
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->USER_INFO:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 732
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->USER_INFO:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 733
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->USER_INFO:Ljava/util/BitSet;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 734
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->USER_INFO:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 740
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->WITHIN_USERINFO:Ljava/util/BitSet;

    .line 743
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->WITHIN_USERINFO:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->USER_INFO:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 744
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->WITHIN_USERINFO:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->clear(I)V

    .line 745
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->WITHIN_USERINFO:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->clear(I)V

    .line 746
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->WITHIN_USERINFO:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 747
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->WITHIN_USERINFO:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 748
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->WITHIN_USERINFO:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 763
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SERVER:Ljava/util/BitSet;

    .line 766
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SERVER:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->USER_INFO:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 767
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SERVER:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 768
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SERVER:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HOST_PORT:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 785
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REG_NAME:Ljava/util/BitSet;

    .line 788
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REG_NAME:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 789
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REG_NAME:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ESCAPED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 790
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REG_NAME:Ljava/util/BitSet;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 791
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REG_NAME:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 792
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REG_NAME:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 793
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REG_NAME:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 794
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REG_NAME:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 795
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REG_NAME:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 796
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REG_NAME:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 797
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REG_NAME:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 812
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->AUTHORITY:Ljava/util/BitSet;

    .line 815
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->AUTHORITY:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SERVER:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 816
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->AUTHORITY:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REG_NAME:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 831
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SCHEME:Ljava/util/BitSet;

    .line 834
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SCHEME:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALPHA:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 835
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SCHEME:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DIGIT:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 836
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SCHEME:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 837
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SCHEME:Ljava/util/BitSet;

    const/16 v2, 0x2d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 838
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SCHEME:Ljava/util/BitSet;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 855
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_SEGMENT:Ljava/util/BitSet;

    .line 858
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_SEGMENT:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNRESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 859
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_SEGMENT:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ESCAPED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 860
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_SEGMENT:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->set(I)V

    .line 861
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_SEGMENT:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 862
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_SEGMENT:Ljava/util/BitSet;

    const/16 v2, 0x26

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 863
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_SEGMENT:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 864
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_SEGMENT:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->set(I)V

    .line 865
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_SEGMENT:Ljava/util/BitSet;

    const/16 v2, 0x24

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 866
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_SEGMENT:Ljava/util/BitSet;

    const/16 v2, 0x2c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 881
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_PATH:Ljava/util/BitSet;

    .line 884
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_PATH:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_SEGMENT:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 885
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_PATH:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ABS_PATH:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 900
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->NET_PATH:Ljava/util/BitSet;

    .line 903
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->NET_PATH:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 904
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->NET_PATH:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->AUTHORITY:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 905
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->NET_PATH:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ABS_PATH:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 920
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HIER_PART:Ljava/util/BitSet;

    .line 923
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HIER_PART:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->NET_PATH:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 924
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HIER_PART:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ABS_PATH:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 926
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HIER_PART:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->QUERY:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 941
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->RELATIVE_URI:Ljava/util/BitSet;

    .line 944
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HIER_PART:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->NET_PATH:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 945
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HIER_PART:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ABS_PATH:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 946
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HIER_PART:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_PATH:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 948
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HIER_PART:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->QUERY:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 963
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ABSOLUTE_URI:Ljava/util/BitSet;

    .line 966
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ABSOLUTE_URI:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SCHEME:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 967
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ABSOLUTE_URI:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->set(I)V

    .line 968
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ABSOLUTE_URI:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HIER_PART:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 969
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ABSOLUTE_URI:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->OPAQUE_PART:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 984
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URI_REFERENCE:Ljava/util/BitSet;

    .line 987
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URI_REFERENCE:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ABSOLUTE_URI:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 988
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URI_REFERENCE:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HIER_PART:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 989
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URI_REFERENCE:Ljava/util/BitSet;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 990
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URI_REFERENCE:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->FRAGMENT:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 999
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->CONTROL:Ljava/util/BitSet;

    .line 1002
    const/4 v0, 0x0

    :goto_5
    const/16 v1, 0x1f

    if-gt v0, v1, :cond_5

    .line 1003
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->CONTROL:Ljava/util/BitSet;

    invoke-virtual {v1, v0}, Ljava/util/BitSet;->set(I)V

    .line 1002
    add-int/lit8 v0, v0, 0x1

    goto :goto_5

    .line 1005
    :cond_5
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->CONTROL:Ljava/util/BitSet;

    const/16 v2, 0x7f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1011
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SPACE:Ljava/util/BitSet;

    .line 1014
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SPACE:Ljava/util/BitSet;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1020
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DELIMS:Ljava/util/BitSet;

    .line 1023
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DELIMS:Ljava/util/BitSet;

    const/16 v2, 0x3c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1024
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DELIMS:Ljava/util/BitSet;

    const/16 v2, 0x3e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1025
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DELIMS:Ljava/util/BitSet;

    const/16 v2, 0x23

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1026
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DELIMS:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->set(I)V

    .line 1027
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DELIMS:Ljava/util/BitSet;

    const/16 v2, 0x22

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1033
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNWISE:Ljava/util/BitSet;

    .line 1036
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNWISE:Ljava/util/BitSet;

    const/16 v2, 0x7b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1037
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNWISE:Ljava/util/BitSet;

    const/16 v2, 0x7d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1038
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNWISE:Ljava/util/BitSet;

    const/16 v2, 0x7c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1039
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNWISE:Ljava/util/BitSet;

    const/16 v2, 0x5c

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1040
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNWISE:Ljava/util/BitSet;

    const/16 v2, 0x5e

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1041
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNWISE:Ljava/util/BitSet;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1042
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNWISE:Ljava/util/BitSet;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1043
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->UNWISE:Ljava/util/BitSet;

    const/16 v2, 0x60

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->set(I)V

    .line 1049
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DISALLOWED_REL_PATH:Ljava/util/BitSet;

    .line 1052
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DISALLOWED_REL_PATH:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1053
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DISALLOWED_REL_PATH:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_PATH:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 1059
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DISALLOWED_OPAQUE_PART:Ljava/util/BitSet;

    .line 1062
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DISALLOWED_OPAQUE_PART:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1063
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->DISALLOWED_OPAQUE_PART:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->OPAQUE_PART:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 1071
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_AUTHORTIY:Ljava/util/BitSet;

    .line 1074
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_AUTHORTIY:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->AUTHORITY:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1075
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_AUTHORTIY:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1081
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_OPAQUE_PART:Ljava/util/BitSet;

    .line 1084
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_OPAQUE_PART:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->OPAQUE_PART:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1085
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_OPAQUE_PART:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1091
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_REG_NAME:Ljava/util/BitSet;

    .line 1094
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_REG_NAME:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REG_NAME:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1096
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_REG_NAME:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1102
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_USER_INFO:Ljava/util/BitSet;

    .line 1105
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_USER_INFO:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->USER_INFO:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1107
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_USER_INFO:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1113
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_USER_INFO:Ljava/util/BitSet;

    .line 1116
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_USER_INFO:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->WITHIN_USERINFO:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1117
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_USER_INFO:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1124
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_IPV6_REFERENCE:Ljava/util/BitSet;

    .line 1127
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_IPV6_REFERENCE:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->IPV6_REFERENCE:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1129
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_IPV6_REFERENCE:Ljava/util/BitSet;

    const/16 v2, 0x5b

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1130
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_IPV6_REFERENCE:Ljava/util/BitSet;

    const/16 v2, 0x5d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1137
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_HOST:Ljava/util/BitSet;

    .line 1140
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_HOST:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->HOSTNAME:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1141
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_HOST:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_IPV6_REFERENCE:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1147
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_AUTHORITY:Ljava/util/BitSet;

    .line 1150
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_AUTHORITY:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->SERVER:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1151
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_AUTHORITY:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REG_NAME:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1152
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_AUTHORITY:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->clear(I)V

    .line 1153
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_AUTHORITY:Ljava/util/BitSet;

    invoke-virtual {v1, v8}, Ljava/util/BitSet;->clear(I)V

    .line 1154
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_AUTHORITY:Ljava/util/BitSet;

    const/16 v2, 0x40

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1155
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_AUTHORITY:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1156
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_AUTHORITY:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1162
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_ABS_PATH:Ljava/util/BitSet;

    .line 1165
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_ABS_PATH:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ABS_PATH:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1167
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_ABS_PATH:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->PERCENT:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 1168
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_ABS_PATH:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->clear(I)V

    .line 1174
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_REL_PATH:Ljava/util/BitSet;

    .line 1177
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_REL_PATH:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->REL_PATH:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1178
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_REL_PATH:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1179
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_REL_PATH:Ljava/util/BitSet;

    invoke-virtual {v1, v7}, Ljava/util/BitSet;->clear(I)V

    .line 1185
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_PATH:Ljava/util/BitSet;

    .line 1188
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_PATH:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ABS_PATH:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1189
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_PATH:Ljava/util/BitSet;

    const/16 v2, 0x2f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1190
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_PATH:Ljava/util/BitSet;

    invoke-virtual {v1, v6}, Ljava/util/BitSet;->clear(I)V

    .line 1191
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_PATH:Ljava/util/BitSet;

    const/16 v2, 0x3d

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1192
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_PATH:Ljava/util/BitSet;

    const/16 v2, 0x3f

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->clear(I)V

    .line 1198
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_QUERY:Ljava/util/BitSet;

    .line 1201
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_QUERY:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1202
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_QUERY:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1208
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_QUERY:Ljava/util/BitSet;

    .line 1211
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_QUERY:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_QUERY:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1212
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_WITHIN_QUERY:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->RESERVED:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->andNot(Ljava/util/BitSet;)V

    .line 1218
    new-instance v1, Ljava/util/BitSet;

    invoke-direct {v1, v4}, Ljava/util/BitSet;-><init>(I)V

    sput-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_FRAGMENT:Ljava/util/BitSet;

    .line 1221
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_FRAGMENT:Ljava/util/BitSet;

    sget-object v2, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->URIC:Ljava/util/BitSet;

    invoke-virtual {v1, v2}, Ljava/util/BitSet;->or(Ljava/util/BitSet;)V

    .line 1222
    sget-object v1, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->ALLOWED_FRAGMENT:Ljava/util/BitSet;

    invoke-virtual {v1, v5}, Ljava/util/BitSet;->clear(I)V

    .line 1223
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    const/4 v0, 0x0

    iput v0, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mHash:I

    .line 66
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mUri:[C

    .line 71
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mProtocolCharset:Ljava/lang/String;

    .line 89
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mScheme:[C

    .line 94
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mOpaque:[C

    .line 99
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mAuthority:[C

    .line 104
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mUserInfo:[C

    .line 109
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mHost:[C

    .line 114
    const/4 v0, -0x1

    iput v0, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mPort:I

    .line 119
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mPath:[C

    .line 124
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mQuery:[C

    .line 129
    iput-object v1, p0, Lcom/mediatek/xcap/client/uri/UriEncodeBitsSet;->mFragment:[C

    return-void
.end method
