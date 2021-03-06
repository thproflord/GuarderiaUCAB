--
-- Table structure for table `actividad_2`
--

CREATE TABLE `actividad_2` (
  `id_actividad` int(11) UNSIGNED NOT NULL,
  `codigo` varchar(11) NOT NULL,
  `nombre` varchar(11) NOT NULL,
  `transporte` tinyint(2) UNSIGNED NOT NULL,
  `costo_trans` float UNSIGNED DEFAULT NULL,
  `edad_minima` int(11) UNSIGNED NOT NULL,
  `descripcion` varchar(26) NOT NULL,
  `tipo` varchar(20)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `alergia_2`
--

CREATE TABLE `alergia_2` (
  `id_alergia` int(11) NOT NULL,
  `codigo` varchar(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `asistencia_2`
--

CREATE TABLE `asistencia_2` (
  `id_asistencia` int(11) UNSIGNED NOT NULL,
  `id_padre` int(11) UNSIGNED DEFAULT NULL,
  `id_autorizado` int(11) UNSIGNED DEFAULT NULL,
  `id_inscripcion` int(11) UNSIGNED NOT NULL,
  `hora_llegada` int(5) UNSIGNED NOT NULL,
  `hora_salida` int(5) UNSIGNED NOT NULL,
  `dia` varchar(10) NOT NULL,
  `comio` tinyint(1) UNSIGNED NOT NULL COMMENT '1: Si, 0 : No'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `autorizado_2`
--

CREATE TABLE `autorizado_2` (
  `id_autorizado` int(11) UNSIGNED NOT NULL,
  `cedula` int(11) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `apellido` varchar(15) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `comida_2`
--

CREATE TABLE `comida_2` (
  `id_comida` int(11) NOT NULL,
  `tipo` tinyint(2) NOT NULL COMMENT '1: proteina, 2: ensalada , 3: jugo , 4:carbohidrato',
  `descripcion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detalle_factura_2`
--

CREATE TABLE `detalle_factura_2` (
  `id_factura` int(11) UNSIGNED NOT NULL,
  `id_menu` int(11) UNSIGNED NOT NULL,
  `fechapago` varchar(15) NOT NULL,
  `monto` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `enfermedad_2`
--

CREATE TABLE `enfermedad_2` (
  `id_enfermedad` int(11) UNSIGNED NOT NULL,
  `codigo` varchar(11) NOT NULL,
  `descripcion` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `exp_laboral_2`
--

CREATE TABLE `exp_laboral_2` (
  `id_explaboral` int(11) NOT NULL,
  `id_personal` int(11) UNSIGNED NOT NULL,
  `descripcion` varchar(70) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `factura_2`
--

CREATE TABLE `factura_2` (
  `id_factura` int(11) UNSIGNED NOT NULL,
  `id_inscripcion` int(11) UNSIGNED NOT NULL,
  `semana` int(11) UNSIGNED NOT NULL,
  `num_transferencia` bigint(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guarderia_2`
--

CREATE TABLE `guarderia_2` (
  `id_guarderia` int(11) UNSIGNED NOT NULL,
  `id_lugar` int(11) UNSIGNED DEFAULT NULL,
  `id_enc` int(11) UNSIGNED DEFAULT NULL,
  `rif` varchar(12) NOT NULL,
  `nombre` varchar(18) NOT NULL,
  `telefonos` varchar(15) NOT NULL,
  `costo` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `guarderia_actividad_2`
--

CREATE TABLE `guarderia_actividad_2` (
  `id_ga` int(11) UNSIGNED NOT NULL,
  `id_guarderia` int(11) UNSIGNED NOT NULL,
  `id_actividad` int(11) UNSIGNED NOT NULL,
  `id_personal` int(11) UNSIGNED NOT NULL,
  `cupomin` int(10) UNSIGNED NOT NULL,
  `cupomax` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `guarderia_horario_actividad_2`
--

CREATE TABLE `guarderia_horario_actividad_2` (
  `id_gha` int(11) UNSIGNED NOT NULL,
  `id_ga` int(11) UNSIGNED NOT NULL,
  `id_horario` int(11) UNSIGNED NOT NULL,
  `hora_inicio` int(11) UNSIGNED NOT NULL,
  `hora_fin` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `horario_2`
--

CREATE TABLE `horario_2` (
  `id_horario` int(11) UNSIGNED NOT NULL,
  `dia` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;



-- --------------------------------------------------------

--
-- Table structure for table `horario_guarderia_2`
--

CREATE TABLE `horario_guarderia_2` (
  `id_horario` int(11) UNSIGNED NOT NULL,
  `id_guarderia` int(11) UNSIGNED NOT NULL,
  `hora_inicio` int(11) UNSIGNED NOT NULL,
  `hora_fin` int(11) UNSIGNED NOT NULL,
  `cant_inscritos` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `horario_inscrip_2`
--

CREATE TABLE `horario_inscrip_2` (
  `id_inscripcion` int(11) UNSIGNED NOT NULL,
  `id_gha` int(11) UNSIGNED NOT NULL,
  `costo` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `inscripcion_2`
--

CREATE TABLE `inscripcion_2` (
  `id_inscripcion` int(11) UNSIGNED NOT NULL,
  `id_nino` int(11) NOT NULL,
  `id_guarderia` int(11) UNSIGNED NOT NULL,
  `ano` int(11) NOT NULL,
  `consecutivo` int(11) UNSIGNED NOT NULL,
  `cont_horas_extra` tinyint(1) DEFAULT NULL COMMENT '1: Si , 0 : No',
  `hora_desde` varchar(5) NOT NULL,
  `hora_hasta` varchar(5) NOT NULL,
  `fecha_insc` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `juego_2`
--

CREATE TABLE `juego_2` (
  `id_juego` int(11) UNSIGNED NOT NULL,
  `codigo` varchar(11) NOT NULL,
  `descripcion` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `lugar_2`
--

CREATE TABLE `lugar_2` (
  `id_lugar` int(11) UNSIGNED NOT NULL,
  `id_lugar_padre` int(11) UNSIGNED DEFAULT NULL,
  `nombre` varchar(15) NOT NULL,
  `tipo` int(11) NOT NULL COMMENT '0: Estado, 1: ciudad, 2: pais'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `medicina_2`
--

CREATE TABLE `medicina_2` (
  `id_medicina` int(11) UNSIGNED NOT NULL,
  `codigo` varchar(11) NOT NULL,
  `descripcion` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `mensualidad_2`
--

CREATE TABLE `mensualidad_2` (
  `id_mensualidad` int(11) NOT NULL,
  `id_inscripcion` int(11) UNSIGNED NOT NULL,
  `consecutivo` int(2) NOT NULL,
  `monto` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `menu_2`
--

CREATE TABLE `menu_2` (
  `id_menu` int(11) UNSIGNED NOT NULL,
  `id_guarderia` int(11) UNSIGNED NOT NULL,
  `numero` int(11) UNSIGNED NOT NULL,
  `dia` varchar(15) NOT NULL,
  `semana` int(11) UNSIGNED NOT NULL,
  `costo` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nino_2`
--

CREATE TABLE `nino_2` (
  `id_nino` int(11) NOT NULL,
  `id_padre` int(11) UNSIGNED NOT NULL,
  `letra` varchar(14) NOT NULL,
  `nombre` varchar(11) NOT NULL,
  `apellido` varchar(11) NOT NULL,
  `fecha_nac` varchar(20) NOT NULL,
  `sexo` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `nino_alergia_2`
--

CREATE TABLE `nino_alergia_2` (
  `id_nino` int(11) NOT NULL,
  `id_alergia` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `nino_autorizado_2`
--

CREATE TABLE `nino_autorizado_2` (
  `id_nino` int(11) NOT NULL,
  `id_autorizado` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nino_enfermedad_2`
--

CREATE TABLE `nino_enfermedad_2` (
  `id_nino` int(11) NOT NULL,
  `id_enfermedad` int(11) UNSIGNED NOT NULL,
  `fechacontagio` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nino_juego_2`
--

CREATE TABLE `nino_juego_2` (
  `id_nino` int(11) NOT NULL,
  `id_juego` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `nino_medicina_sintoma_2`
--

CREATE TABLE `nino_medicina_sintoma_2` (
  `id_sintoma` int(11) UNSIGNED NOT NULL,
  `id_medicina` int(11) UNSIGNED NOT NULL,
  `id_nino` int(11) NOT NULL,
  `cantidad` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nino_pediatra_2`
--

CREATE TABLE `nino_pediatra_2` (
  `id_nino` int(11) NOT NULL,
  `id_pediatra` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `padre_2`
--

CREATE TABLE `padre_2` (
  `cedula` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(11) NOT NULL,
  `apellido` varchar(11) NOT NULL,
  `direccion` varchar(70) NOT NULL,
  `email` varchar(35) NOT NULL,
  `tel_casa` varchar(15) DEFAULT NULL,
  `tel_ofic` varchar(15) DEFAULT NULL,
  `tel_celular` varchar(15) NOT NULL,
  `profesion` varchar(34) NOT NULL,
  `edo_civil` varchar(11) DEFAULT NULL,
  `principal` tinyint(1) NOT NULL COMMENT '1 : Si 0 : No',
  `vivenino` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `pago_insc_mens_2`
--

CREATE TABLE `pago_insc_mens_2` (
  `id_pim` int(11) UNSIGNED NOT NULL,
  `id_inscripcion` int(11) UNSIGNED DEFAULT NULL,
  `id_mensualidad` int(11) DEFAULT NULL,
  `numero` int(11) UNSIGNED NOT NULL,
  `fechapago` varchar(15) NOT NULL,
  `concepto` int(10) UNSIGNED NOT NULL COMMENT '1:Inscripcion, 2: Mensualidad',
  `tipo_pago` varchar(25) NOT NULL,
  `monto` int(10) UNSIGNED NOT NULL,
  `numero_cheque` int(10) UNSIGNED DEFAULT NULL,
  `numero_tarjeta` int(10) UNSIGNED DEFAULT NULL,
  `monto_debito` int(10) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pago_multa_2`
--

CREATE TABLE `pago_multa_2` (
  `id_pago` int(11) NOT NULL,
  `id_asistencia` int(11) UNSIGNED NOT NULL,
  `num_transferencia` int(10) UNSIGNED NOT NULL,
  `fecha` varchar(15) NOT NULL,
  `monto` float UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `parentesco_2`
--

CREATE TABLE `parentesco_2` (
  `id_padre` int(11) UNSIGNED NOT NULL,
  `id_nino` int(11) NOT NULL,
  `parentesco` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pediatra_2`
--

CREATE TABLE `pediatra_2` (
  `id_pediatra` int(11) UNSIGNED NOT NULL,
  `cedula` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(11) NOT NULL,
  `telefono` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personal_2`
--

CREATE TABLE `personal_2` (
  `id_personal` int(11) UNSIGNED NOT NULL,
  `id_guarderia` int(11) UNSIGNED NOT NULL,
  `cedula` int(11) UNSIGNED NOT NULL,
  `nombre` varchar(11) NOT NULL,
  `apellidos` varchar(11) NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `telefono` varchar(15) NOT NULL,
  `nivel_estudio` text NOT NULL COMMENT 'bachillerato, TSU, universitario, postgrado',
  `sueldo` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `personal_capacidad_2`
--

CREATE TABLE `personal_capacidad_2` (
  `id_personal` int(11) UNSIGNED NOT NULL,
  `tipo` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pers_capacitado_2`
--

CREATE TABLE `pers_capacitado_2` (
  `id_actividad` int(10) UNSIGNED NOT NULL,
  `id_personal` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `plato_2`
--

CREATE TABLE `plato_2` (
  `id_plato` int(11) UNSIGNED NOT NULL,
  `codigo` varchar(11) NOT NULL,
  `descripcion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `plato_comida_2`
--

CREATE TABLE `plato_comida_2` (
  `id_comida` int(11) NOT NULL,
  `id_plato` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;


-- --------------------------------------------------------

--
-- Table structure for table `plato_menu_2`
--

CREATE TABLE `plato_menu_2` (
  `id_plato` int(11) UNSIGNED NOT NULL,
  `id_menu` int(11) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `sintoma_2`
--

CREATE TABLE `sintoma_2` (
  `id_sintoma` int(11) UNSIGNED NOT NULL,
  `codigo` varchar(15) NOT NULL,
  `descripcion` varchar(40) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1; 